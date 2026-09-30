prep:
	cd server && npm install && npx prisma generate && npx prisma migrate dev && npx prisma db seed && cd ../client && npm install

db-check:
	docker compose exec db pg_isready -U demo -d notes

up:
	docker compose up -d

down:
	docker compose down

run-server:
	cd server && npm run dev

run-client:
	cd client && npm run dev

migrate:
	cd server && npx prisma migrate dev --name $(name)

seed:
	cd server && npx prisma db seed

studio:
	cd server && npx prisma studio

prisma:
	cd server && npx prisma generate

config:
	docker compose config