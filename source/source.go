package source

import (
	"context"
	"fmt"
	"reflect"

	validation "github.com/go-ozzo/ozzo-validation/v4"
)

// SourceEntry is an entry that has been discovered in a source, with the contents of the
// source file and an Origin that explains where the entry came from, specific to the type
// of source that produced it.
type SourceEntry struct {
	Origin   string // the source origin e.g. inline
	Filename string // the filename that it should be evaluated under e.g. app/main.jsonnet
	Content  []byte // the content of the source
}

func (e SourceEntry) Parse() ([]Entry, error) {
	entries := Parse(e.Filename, e.Content)
	if len(entries) == 0 {
		return entries, fmt.Errorf("failed to parse any entries")
	}

	return entries, nil
}

// Source is instantiated from configuration and represents a source of catalog files.
type Source struct {
	Local  *SourceLocal  `json:"local,omitempty"`
	Inline *SourceInline `json:"inline,omitempty"`
	Exec   *SourceExec   `json:"exec,omitempty"`
}

func (s Source) Validate() error {
	err := validation.Validate("source", validation.By(func(value any) error {
		if reflect.ValueOf(s).IsZero() {
			return ErrInvalidSourceEmpty
		}

		return nil
	}))
	if err != nil {
		return err
	}

	return validation.ValidateStruct(&s)
}

type SourceBackend interface {
	String() string
	Load(ctx context.Context) ([]*SourceEntry, error)
}

func (s Source) Backend() (SourceBackend, error) {
	if s.Local != nil {
		return s.Local, nil
	}
	if s.Inline != nil {
		return s.Inline, nil
	}
	if s.Exec != nil {
		return s.Exec, nil
	}

	return nil, ErrInvalidSourceEmpty
}

var ErrInvalidSourceEmpty = fmt.Errorf("invalid source, must specify at least one type of source configuration")

func (s Source) Load(ctx context.Context) ([]*SourceEntry, error) {
	source, err := s.Backend()
	if err != nil {
		return nil, err
	}

	return source.Load(ctx)
}
