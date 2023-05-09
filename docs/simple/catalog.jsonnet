{
  // All product development teams are defined here.
  teams: [
    {
      external_id: error 'external_id is required',
      name: error 'name is required',
      description: error 'description is required',
      goal: error 'goal is required',
      homepage: error 'homepage is required',
      group: error 'group is required',
      tech_lead: error 'tech_lead is required',
      engineering_manager: error 'engineering_manager is required',
      product_manager: error 'product_manager is required',
      sentry_team: error 'sentry_team is required',
      slack_user_group: error 'slack_user_group is required',
      slack_channel: error 'slack_channel is required',
      alert_channel: error 'alert_channel is required',
      alert_staging_channel: error 'alert_staging_channel is required',
      linear_team: error 'linear_team is required',
      members: error 'members is required',
      auxiliary_members: error 'auxiliary_members is required',
    } + team
    for team in [
      {
        external_id: 'post-incident',
        name: 'Post-incident',
        description: 'Responsible for all product features that come after closing an incident.',
        goal: 'Increase learnings (decrease repeat incidents) for organisations.',
        homepage:
          'https://www.notion.so/incidentio/Team-Post-incident-478df485d7b54845ae66624d0fae246a',
        group: std.format('%s-team@incident.io', self.external_id),
        tech_lead: 'aaron',
        engineering_manager: 'chris.class',
        product_manager: 'megan.mcdonald',
        sentry_team: 'post-incident',
        slack_user_group: 'team-post-incidentz',
        slack_channel: '#team-post-incident',
        alert_channel: '#errors-post-incident-pulse',
        alert_staging_channel: '#errors-post-incident-staging-pulse',
        linear_team: 'PINC',
        members: [
          'aaron',
          'andy',
          'charlie.revett',
          'james.shedden',
          'megan.mcdonald',
          'milly',
          'rob',
          'rory',
        ],
        auxiliary_members: [
          'pete',
          'lawrence',
          'ben',
        ],
      },
      {
        external_id: 'response',
        name: 'Response',
        description: 'Responsible for all product features that power incident response.',
        goal: 'Make it easy to do the right thing (and quickly) during an incident.',
        homepage:
          'https://www.notion.so/incidentio/Team-Response-ade2cb14e90b4af1b5f79083a888c5c2?pvs=4',
        group: std.format('%s-team@incident.io', self.external_id),
        tech_lead: 'lisa',
        engineering_manager: 'alicia',
        product_manager: 'megan.mcdonald',
        sentry_team: 'response',
        slack_user_group: 'engineerz',
        slack_channel: '#team-response',
        alert_channel: '#errors-response-pulse',
        alert_staging_channel: '#errors-response-staging-pulse',
        linear_team: 'RESP',
        members: [
          'benji',
          'james.shedden',
          'kelsey',
          'leo.papaloizos',
          'lisa',
          'megan.mcdonald',
          'sam',
          'walt',
        ],
        auxiliary_members: [
          'pete',
          'lawrence',
          'ben',
        ],
      },
      {
        external_id: 'status-pages',
        name: 'Status pages',
        description: 'Responsible for the customer facing status pages product.',
        goal: 'Build the best status page product on the market (and annihilate the competition).',
        homepage:
          'https://www.notion.so/incidentio/Status-Page-Team-b5bf9600a3be458aab7ddcc3476b2eaf',
        group: std.format('%s-team@incident.io', self.external_id),
        tech_lead: 'martha',
        engineering_manager: 'alicia',
        product_manager: 'megan.mcdonald',
        sentry_team: 'status-pages',
        slack_user_group: 'team-status-page',
        slack_channel: '#team-status-pages',
        alert_channel: '#errors-status-page-pulse',
        alert_staging_channel: null,
        linear_team: 'SP',
        members: [
          'dimitra',
          'isaac',
          'james.shedden',
          'martha',
          'megan.mcdonald',
        ],
        auxiliary_members: [
          'pete',
          'lawrence',
          'ben',
        ],
      },
    ]
  ],

  // Customer facing features.
  features: [
    {
      external_id: error 'external_id is required',
      name: error 'name is required',
      description: error 'description is required',
      owner: error 'owner is required',
    } + feature
    for feature in [
      {
        external_id: 'actions',
        name: 'Actions',
        description: 'Task management during an incident.',
        owner: 'response',
      },
      {
        external_id: 'announcement-rules',
        name: 'Announcement rules',
        description: 'Publish announcement posts to Slack channels when incidents are declared and updated.',
        owner: 'response',
      },
      {
        external_id: 'audit-logs',
        name: 'Audit logs',
        description: 'The audit log feature powered by WorkOS.',
        owner: 'post-incident',
      },
      {
        external_id: 'api',
        name: 'API',
        description: 'The public API that customers use to build integrations with our product.',
        owner: 'response',
      },
      {
        external_id: 'automation',
        name: 'Automation',
        description: 'Collection of standalone automations like auto-closing incidents.',
        owner: 'response',
      },
      {
        external_id: 'billing',
        name: 'Billing',
        description: 'Collecting payments from customers and managing their subscriptions.',
        owner: 'post-incident',
      },
      {
        external_id: 'bulk-editing-incidents',
        name: 'Bulk editing incidents',
        description: 'Dashboard bulk edit flow for incidents.',
        owner: 'post-incident',
      },
      {
        external_id: 'custom-fields',
        name: 'Custom fields',
        description: 'Tag incidents with custom fields.',
        owner: 'post-incident',
      },
      {
        external_id: 'decision-flows',
        name: 'Decision flows',
        description: 'Use decision flows to help guide responders through a flow chart during incidents.',
        owner: 'response',
      },
      {
        external_id: 'demo-magic',
        name: 'Demo magic',
        description: 'Demo magic dashboard for helping Sales.',
        owner: 'response',
      },
      {
        external_id: 'escalations',
        name: 'Escalations',
        description: 'Escalate to a pager using any of the connected integrations.',
        owner: 'response',
      },
      {
        external_id: 'external-resources',
        name: 'External resources',
        description: 'Tracking external resources and their attachment onto incidents.',
        owner: 'response',
      },
      {
        external_id: 'exporting-data',
        name: 'Exporting data',
        description: 'Exporting data from the dashboard, usually via CSV.',
        owner: 'post-incident',
      },
      {
        external_id: 'feedback',
        name: 'Feedback',
        description: 'Collecting feedback at the end of an incident.',
        owner: 'post-incident',
      },
      {
        external_id: 'follow-ups',
        name: 'Follow-ups',
        description: 'Track work that needs to be done after an incident is closed, usually synced into a connected issue tracker.',
        owner: 'post-incident',
      },
      {
        external_id: 'incident-debriefs',
        name: 'Incident debriefs',
        description: 'Anything around scheduling or running of incident debriefs.',
        owner: 'post-incident',
      },
      {
        external_id: 'incident-lifecycle',
        name: 'Incident lifecycle',
        description: 'Incident lifecycle in states, timestamps and more.',
        owner: 'response',
      },
      {
        external_id: 'incident-dashboard',
        name: 'Incident dashboard',
        description: 'Incident home and list views in the dashboard.',
        owner: 'post-incident',
      },
      {
        external_id: 'incident-roles',
        name: 'Incident roles',
        description: 'Management and assignment of incident roles.',
        owner: 'response',
      },
      {
        external_id: 'incident-severities',
        name: 'Incident severities',
        description: 'Management and setting of incident severities.',
        owner: 'response',
      },
      {
        external_id: 'incident-timeline',
        name: 'Incident timeline',
        description: 'Viewing of, creating and managing incident timelines.',
        owner: 'post-incident',
      },
      {
        external_id: 'incident-triggers',
        name: 'Incident triggers',
        description: 'Automatically create incidents from external triggers, such as PagerDuty or Opsgenie.',
        owner: 'response',
      },
      {
        external_id: 'incident-types',
        name: 'Incident types',
        description: 'Creation of incident types and code to apply type rules during an incident.',
        owner: 'response',
      },
      {
        external_id: 'incident-updates',
        name: 'Incident updates',
        description: 'Creating incident updates and broadcasting.',
        owner: 'response',
      },
      {
        external_id: 'insights',
        name: 'Insights',
        description: 'Gain insight from incidents using aggregated data.',
        owner: 'post-incident',
      },
      {
        external_id: 'insight-emails',
        name: 'Insight emails',
        description: 'Monthly email we send with account insights.',
        owner: 'post-incident',
      },
      {
        external_id: 'jira-sync',
        name: 'Jira sync',
        description: 'Create tickets in Jira when incidents are created and keep them in-sync.',
        owner: 'response',
      },
      {
        external_id: 'login',
        name: 'Login',
        description: 'Account login via Slack.',
        owner: 'post-incident',
      },
      {
        external_id: 'notifications',
        name: 'Notifications',
        description: 'Dashboard notifications and delivery over email or Slack.',
        owner: 'post-incident',
      },
      {
        external_id: 'nudges',
        name: 'Nudges',
        description: 'Nudge incident responders to perform incident tasks.',
        owner: 'response',
      },
      {
        external_id: 'onboarding',
        name: 'Onboarding',
        description: 'Onboarding checklist.',
        owner: 'response',
      },
      {
        external_id: 'on-call-pay',
        name: 'On-call pay',
        description: 'Calculate on-call pay from connected paging integrations.',
        owner: 'post-incident',
      },
      {
        external_id: 'policies',
        name: 'Policies',
        description: 'Encode rules about how you should handle incidents and receive reminders/prompt people to follow them.',
        owner: 'post-incident',
      },
      {
        external_id: 'post-incident-checklist',
        name: 'Post-incident checklist',
        description: 'Encourage people to follow and track progress of their post-incident process via a checklist in the dashboard.',
        owner: 'post-incident',
      },
      {
        external_id: 'post-mortems',
        name: 'Post-mortems',
        description: 'Generate and export post-mortems from incidents.',
        owner: 'post-incident',
      },
      {
        external_id: 'private-incidents',
        name: 'Private incidents',
        description: 'Incidents that are created with restricted visibility and access control.',
        owner: 'response',
      },
      {
        external_id: 'privileged-slack-access',
        name: 'Priviledged Slack access',
        description: 'Elevated access into Slack that allows acting as an admin.',
        owner: 'post-incident',
      },
      {
        external_id: 'rbac',
        name: 'RBAC',
        description: 'Role-based-access-control in the product, including custom roles.',
        owner: 'post-incident',
      },
      {
        external_id: 'saved-views',
        name: 'Saved views',
        description: 'Filters that can be saved in the dashboard for incidents, follow-ups and insights.',
        owner: 'post-incident',
      },
      {
        external_id: 'saml',
        name: 'SAML',
        description: 'Login to the product using SAML.',
        owner: 'post-incident',
      },
      {
        external_id: 'scim',
        name: 'SCIM',
        description: 'Manage groups and RBAC membership via SCIM.',
        owner: 'post-incident',
      },
      {
        external_id: 'security',
        name: 'Security',
        description: 'Account security features offered via the dashboard settings.',
        owner: 'post-incident',
      },
      {
        external_id: 'slack-channel-management',
        name: 'Slack channel management',
        description: 'Quick actions, bookmarks, and any Slack channel customisation.',
        owner: 'response',
      },
      {
        external_id: 'slack-enterprise-grid',
        name: 'Slack Enterprise Grid',
        description: 'Support for using Slack Enterprise Grid to access the product.',
        owner: 'post-incident',
      },
      {
        external_id: 'status-page-incidents',
        name: 'Status page incidents',
        description: 'Dashboard flow to create new status page and publish updates.',
        owner: 'status-pages',
      },
      {
        external_id: 'status-page-localisation',
        name: 'Status page localisation',
        description: 'Status page localisation often provided by JS plugins like LocalizeJS',
        owner: 'status-pages',
      },
      {
        external_id: 'status-page-setup',
        name: 'Status page setup',
        description: 'Configuration and setup of customer status pages.',
        owner: 'status-pages',
      },
      {
        external_id: 'status-page-subscriptions',
        name: 'Status page subscriptions',
        description: 'Subscriptions by our customers users to status page incidents.',
        owner: 'status-pages',
      },
      {
        external_id: 'status-pages',
        name: 'Status pages',
        description: 'Customer status pages hosted externally, the public part.',
        owner: 'status-pages',
      },
      {
        external_id: 'subscriptions',
        name: 'Subscriptions',
        description: 'Subscribe to incident updates on a per-incident or incident rule basis.',
        owner: 'response',
      },
      {
        external_id: 'triage-incidents',
        name: 'Triage incidents',
        description: 'Incidents that are created in triage and associated product flows.',
        owner: 'response',
      },
      {
        external_id: 'tutorial',
        name: 'Tutorial',
        description: 'The incident tutorial created by /inc tutorial.',
        owner: 'response',
      },
      {
        external_id: 'user-preferences',
        name: 'User preferences',
        description: 'Settings for the individual user around subscriptions and notifications.',
        owner: 'post-incident',
      },
      {
        external_id: 'webhooks',
        name: 'Webhooks',
        description: 'Webhooks that are sent to our customers to power their integrations.',
        owner: 'response',
      },
      {
        external_id: 'workflows',
        name: 'Workflows',
        description: 'Automation for incident response.',
        owner: 'response',
      },
    ]
  ],

  // Integrations in the product.
  integrations: [
    {
      external_id: error 'external_id is required',
      name: error 'name is required',
      description: error 'description is required',
      owner: error 'owner is required',
    } + integration
    for integration in [
      {
        external_id: 'asana',
        name: 'Asana',
        description: 'Use Asana to export actions and have incident.io monitor the state of them.',
        owner: 'post-incident',
      },
      {
        external_id: 'confluence',
        name: 'Confluence',
        description: 'Use Confluence to export post-mortems for archival or collaboration.',
        owner: 'post-incident',
      },
      {
        external_id: 'datadog',
        name: 'Datadog',
        description: 'Use Datadog to see what monitors triggered an incident.',
        owner: 'response',
      },
      {
        external_id: 'github',
        name: 'GitHub',
        description: 'Use Github to export actions and have incident.io monitor the\nstate of them.',
        owner: 'post-incident',
      },
      {
        external_id: 'google_docs',
        name: 'Google Docs',
        description: 'Use Google Docs to export post-mortems for collaboration.',
        owner: 'post-incident',
      },
      {
        external_id: 'google_meet',
        name: 'Google Meet',
        description: 'Use Google Meet to automatically start call links for your incident channels.',
        owner: 'response',
      },
      {
        external_id: 'jira',
        name: 'Jira',
        description: 'Use Jira Cloud to export actions, and have incident.io monitor the state of them.',
        owner: 'post-incident',
      },
      {
        external_id: 'jira_server',
        name: 'Jira Server',
        description: 'Use Jira Server to export actions, and have incident.io monitor the state of them.',
        owner: 'post-incident',
      },
      {
        external_id: 'linear',
        name: 'Linear',
        description: 'Use Linear to export actions and have incident.io monitor the state of them.',
        owner: 'post-incident',
      },
      {
        external_id: 'notion',
        name: 'Notion',
        description: 'Use Notion to export post-mortems for collaboration.',
        owner: 'post-incident',
      },
      {
        external_id: 'okta',
        name: 'Okta',
        description: 'Connect Okta to incident.io with SCIM and/or SAML to manage your users.',
        owner: 'post-incident',
      },
      {
        external_id: 'opsgenie',
        name: 'Opsgenie',
        description: 'Use Opsgenie to escalate during incidents.',
        owner: 'response',
      },
      {
        external_id: 'pagerduty',
        name: 'PagerDuty',
        description: 'Use PagerDuty to escalate during incidents, or auto-create incidents.',
        owner: 'response',
      },
      {
        external_id: 'sentry',
        name: 'Sentry',
        description: 'Use Sentry to link issues with incidents, to hear about updates and resolve them when the incident has closed.',
        owner: 'response',
      },
      {
        external_id: 'shortcut',
        name: 'Shortcut',
        description: 'Use Shortcut to export actions and have incident.io monitor the state of them.',
        owner: 'post-incident',
      },
      {
        external_id: 'slack',
        name: 'Slack',
        description: 'Slack is the account connected to incident.io, and used to power the incident bot.',
        owner: 'post-incident',
      },
      {
        external_id: 'splunk_on_call',
        name: 'Splunk On-Call',
        description: 'Use Splunk On-Call to escalate incidents and page policies or people.',
        owner: 'response',
      },
      {
        external_id: 'statuspage',
        name: 'Statuspage',
        description: 'Use Statuspage to manage your external Statuspage from within an incident channel.',
        owner: 'status-pages',
      },
      {
        external_id: 'vanta',
        name: 'Vanta',
        description: 'Maintain policy compliance by having incident.io data synced with Vanta.',
        owner: 'post-incident',
      },
      {
        external_id: 'zendesk',
        name: 'Zendesk',
        description: 'Use Zendesk to link tickets with incidents, and to push incident updates back into Zendesk.',
        owner: 'response',
      },
      {
        external_id: 'zoom',
        name: 'Zoom',
        description: 'Use Zoom to automatically start call links for your incident channels, and more.',
        owner: 'response',
      },
    ]
  ],
}
