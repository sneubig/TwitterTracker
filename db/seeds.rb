# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
Player.create([
	{ name: 'Johnny Manziel', position_id: 1, team: 'Cleveland Browns', twitter_username: '@JManziel2', photo_url: 'https://pbs.twimg.com/profile_images/468184422252941313/ZK76feQW.jpeg'},
	{ name: 'Reggie Bush', position_id: 2, team: 'Detroit Lions', twitter_username: '@ReggieBush', photo_url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVmiXGftRFYu9-WFYYN2zIR5tkiftNG7I0jEURIC0GHK1EE_dO'},
	{ name: 'Richard Sherman', position_id: 5, team: 'Seattle Seahawks', twitter_username: '@RSherman_25', photo_url: 'https://pbs.twimg.com/profile_images/456570619807543297/xu23hznx.jpeg'},
	{ name: 'Larry Fitzgerald', position_id: 3, team: 'Arizona Cardinals', twitter_username: '@LarryFitzgerald', photo_url: 'http://www.tddaily.com/static/uploads/2014/03/larry-fitzgerald.jpg'},
	{ name: 'Vernon Davis', position_id: 4, team: 'San Francisco 49ers', twitter_username: '@VernonDavis85', photo_url: 'http://www.everyjoe.com/files/2008/10/vernon-davis_nc.jpg'}
])

Keyword.create([
	{name: 'family', attitude: 'positive'},
	{name: 'kids', attitude: 'positive'},
	{name: 'mom', attitude: 'positive'},
	{name: 'sponsor', attitude: 'positive'},
	{name: 'charity', attitude: 'positive'},
	{name: 'wife', attitude: 'positive'},
	{name: 'practice', attitude: 'positive'},
	{name: 'sleep', attitude: 'positive'},
	{name: 'weightroom', attitude: 'positive'},
	{name: 'team', attitude: 'positive'},
	{name: 'fans', attitude: 'positive'},
	{name: 'girlfriend', attitude: 'positive'},
	{name: 'beer', attitude: 'negative'},
	{name: 'hangover', attitude: 'negative'},
	{name: 'club', attitude: 'negative'},
	{name: 'party', attitude: 'negative'},
	{name: 'vegas', attitude: 'negative'},
	{name: 'drugs', attitude: 'negative'},
	{name: 'tired', attitude: 'negative'},
	{name: 'bieber', attitude: 'negative'},
	{name: 'shots', attitude: 'negative'},
	{name: 'injury', attitude: 'negative'},
	{name: 'bar', attitude: 'negative'},
	{name: 'arrest', attitude: 'negative'}
])

Position.create([
	{ name: 'QB'},
	{ name: 'RB'},
	{ name: 'WR'},
	{ name: 'TE'},
	{ name: 'CB'}
])

#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
