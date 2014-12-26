require 'redmine'

require_dependency 'redmine_slack_to_users/listener'

Redmine::Plugin.register :redmine_slack do
	name 'Redmine Slack To Users'
	author 'com-k12'
	url 'https://github.com/com-k12/redmine-slack-to-users'
	author_url 'http://k12.ru'
	description 'Slack chat integration'
	version '0.1'

	requires_redmine :version_or_higher => '0.8.0'

	settings \
		:default => {
			'callback_url' => 'http://slack.com/callback/',
			'channel' => nil,
			'icon' => 'https://raw.github.com/com-k12/redmine-slack-to-users/gh-pages/icon.png',
			'username' => 'redmine'
		},
		:partial => 'settings/slack_settings'
end
