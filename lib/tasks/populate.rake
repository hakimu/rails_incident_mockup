namespace :db do
	desc "Erase and fill database"
	task :populate => :environment do
		require 'populator'
		require 'faker'
		#[Account].each(&:delete_all)
    Account.populate 500 do |account|
    	account.number = Faker::Number.number(6)
    	account.priority = Faker::Number.between(0,7)
    	account.name = Faker::Company.name
    	account.owner = Faker::Name.name
    	account.collector = ["collector-101.newrelic.com","collector-102.newrelic.com","collector-103.newrelic.com","collector-104.newrelic.com","collector-105.newrelic.com","collector-106.newrelic.com","collector-107.newrelic.com","collector-108.newrelic.com","collector-109.newrelic.com","collector-110.newrelic.com","collector-111.newrelic.com","collector-112.newrelic.com","collector-113.newrelic.com","collector-114.newrelic.com","collector-115.newrelic.com","collector-116.newrelic.com","collector-117.newrelic.com","collector-118.newrelic.com","collector-118.newrelic.com","collector-119.newrelic.com","collector-120.newrelic.com","collector-121.newrelic.com","collector-122.newrelic.com","collector-123.newrelic.com","collector-124.newrelic.com","collector-125.newrelic.com","collector-126.newrelic.com","collector-127.newrelic.com"]
    	account.agentdb = ["mysql-agent-0","mysql-agent-2","mysql-agent-3","mysql-agent-4","mysql-agent-6","mysql-agent-7","mysql-agent-8","mysql-agent-9"]
    	account.timeslice = ["chi-prod-timeslice-11","chi-prod-timeslice-12","chi-prod-timeslice-13","chi-prod-timeslice-14","chi-prod-timeslice-15","chi-prod-timeslice-16","chi-prod-timeslice-17","chi-prod-timeslice-19","chi-prod-timeslice-20","chi-prod-timeslice-21","chi-prod-timeslice-23","chi-prod-timeslice-24","chi-prod-timeslice-25","chi-prod-timeslice-26","chi-prod-timeslice-27","chi-prod-timeslice-28","chi-prod-timeslice-3","chi-prod-timeslice-31","chi-prod-timeslice-32","chi-prod-timeslice-33","chi-prod-timeslice-34","chi-prod-timeslice-4","chi-prod-timeslice-6","chi-prod-timeslice-8","chi-prod-timeslice-9",]
    	account.created = 2.years.from_now..Time.now
    	account.expiration = Faker::Time.forward(1000)
      account.collector_host = ["chi-prod-collector-1","chi-prod-collector-10","chi-prod-collector-10a","chi-prod-collector-10b","chi-prod-collector-10c","chi-prod-collector-10d","chi-prod-collector-10e","chi-prod-collector-1a","chi-prod-collector-1b","chi-prod-collector-1c","chi-prod-collector-1e","chi-prod-collector-2","chi-prod-collector-2a","chi-prod-collector-2b","chi-prod-collector-2c","chi-prod-collector-2c","chi-prod-collector-2d","chi-prod-collector-2e","chi-prod-collector-3","chi-prod-collector-3a","chi-prod-collector-3b","chi-prod-collector-3c","chi-prod-collector-3d","chi-prod-collector-3e","chi-prod-collector-4","chi-prod-collector-4a","chi-prod-collector-4b","chi-prod-collector-4c","chi-prod-collector-4d","chi-prod-collector-4e"]    
    end   
	end
end


