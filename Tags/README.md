# zhurai Discord Carlbot Tag Scripts

**unixtimepst**
- gets the unix timestamp (unix epoch) using a time in PST (UTC -8) for use in discord timestamps (<t>)

**unixtimepdt**
- gets the unix timestamp (unix epoch) using a time in PDT (UTC -7) for use in discord timestamps (<t>)

**getunixtime**
- gets the unix timestamp (unix epoch) using a time in UTC (UTC +0) without any timezone alterations for use in discord timestamps (<t>)

**game**
- Script that triggers based off zhurai using ".game" in a channel to change the Twitch stream title via Nightbot's Discord bot to also post in #stream-notifications about said game change 
- (This is not used anymore in favor of using Python scripts and the TwitchTV api with Discord webhooks)
