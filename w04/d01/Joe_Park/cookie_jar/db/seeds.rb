CookieWatcher.delete_all

spring_wdi = ["Joe", "Artem", "John R.", "Wilson", "Nelson", "Chris B.", "Chris Lee", "Ben", "Joel", "Declan", "Andrew", "Manny", "Nancy", "Dara", "Jonathan", "Liz", "Jane", "Victor", "David", "Kyle", "Mason", "Sophie", "Zack"]

i = 0

spring_wdi.length.times do 
	CookieWatcher.create({
		name: spring_wdi[i], cookies: 0
	})
	i += 1
end
