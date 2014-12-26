require 'redmine'

require_dependency 'redmine_slack/listener'

Redmine::Plugin.register :redmine_slack do
	name 'Redmine Slack To User'
	author 'com-k12'
	url 'https://github.com/com-k12/redmine-slack'
	author_url 'http://www.k12.ru'
	description 'Slack chat integration'
	version '0.1'

	requires_redmine :version_or_higher => '0.8.0'

	settings \
		:default => {
			'callback_url' => 'http://slack.com/callback/',
			'channel' => nil,
			'icon' => 'https://raw.github.com/sciyoshi/redmine-slack/gh-pages/icon.png',
			'username' => 'redmine'
		},
		:partial => 'settings/slack_settings'
end
