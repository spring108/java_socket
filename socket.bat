java socket.java
pause

Сравнение "Git-flow" и "магистральной разработки"
https://habr.com/ru/articles/765264/
https://www.atlassian.com/ru/continuous-delivery/continuous-integration/trunk-based-development



GIT - контроль версий

master - основная ветка может быть protected

========================================
1)
	git checkout
	git push
	Мёрдж-реквест (GITLAB)
	Pull-реквест (GITHUB)
2)
	после мёрджа - ветку удаляем или обновляем


========================================
	l Git - локальная система
	l GitHub-ы (сервера):
		– Bitbacket (atlassian)
		– github.com
		– GitLab Community Edition
========================================
Ролики
	Git и GitHub Курс Для Новичков

file:///C:/Users/rb179963/AppData/Local/Programs/Git/mingw64/share/doc/git-doc/index.html

========================================
git init/clone
git status
git add <file> / git add . / git rm <file>
git commit -m "комментарий" (показывает хэш коммита)

git branch Readme
git checkout Readme
*Изменения в новой ветке
git commit -m "qqq"

git checkout master
git merge Readme

//работа с хабом - залив на HUB:
git config --global user.name "Имя"
git remote add origin https://.....
git push -u origin master <== залили на HUB
*изменения в локальном git
git status
git add <file>
git status
git commit -m "qqq"
git status
git push <== отправка в HUB
*изменения на HUB другим разработчиком!!
git status <== не видит изменений на HUB!!
git pull <== забрать в git изменения из HUB


//работа с хабом: тянем себе из HUB + заливаем в HUB:
*делаем пустую новую папку, переходим в неё
git clone https://....
*изменения в локальном git
git status <== показывает изменения
git add .
git commit -m "qqq"
git push <== отправка в HUB


========================================
START

git --version
git --help
git config --global http.sslVerify false
git config --global user.email "you@example.com"
git config --global user.name "Your Name"

git help workflows
git clone
	git -c http.sslVerify=false clone https://....
	Применяется к [пустой] папке. Тянет и создаёт клон.
git init
	Применяется к [пустой] папке. Создаётся скрытая папка .git


WORK
git add
	Индексация
	Начать git-у следить за файлом/файлами
	git add .   <== добавить все файлы
	Нужно так же добавлять изменённые файлы!!!
	Исключения для git add . в файле ".gitignore"
	Сам файл ".gitignore" нужно добавить(затрекать).
git mv
git restore
git rm
	Перестать следить за файлом. Противоположность git add.
	git rm --cached <file> 


History&state
git bisect
git diff
	Показать сравнение двух веток
git grep
git log
git show
git status
	- Показывает текущий ветку
	- Был ли коммит?
	- Показывает изменённые файлов после commit-а. Или что нечего коммитить.
	- Есть ли untracked-файлы? (за которыми git не следит)


Grow, mark, tweak
git branch
	git branch  <== показывает текущую ветку [master]
	git branch  <новая ветка>  <== создаёт ветку (не переключается на неё)
	git branch -D <ветка>  <== удаляет ветку
	git branch -M <ветка>  <== переименовывает текущую ветку
git checkout 
	git checkout <ветка>  <== переключается на ветку
	git checkout -b <ветка>  <== создаёт и сразу переключается на ветку
git commit
	git commit -m "комментарий/имя" (показывает хэш)
git merge
	git merge <ветка из которой тянем в эту ветку>
	После сделать git log - посмотреть
	Возможно CONFLICT: AUTOMATIC MERGE FAILED
git rebase
git reset
	-=REVERT vs RESET=-
	git reset опция <ID_коммита_к_которому_надо_откатиться>
	Опции:
		-soft 
		-mixed
		-hard 
	git reset -hard <== откат merge
git switch
git tag


Collaborate
git fetch
git pull
	GitHUB to Git
	Залить себе в git последние изменения из GitHub
git push
	Git => GitHUB
	Залить из локального git в GITHUB. Показывает из какой в какую ветку было залито.
	git push -u origin master
	git push --force
git config
	git config --global user.name <== показывает имя
	git config --global user.name "Имя" <== устанавливает имя
	git config --global user.email <== показывает email
git remote
	Привязывает
	git remote add origin https://.....




========================================
Изменить origin адрес репозитория двумя способами:
	1) Первый способ задать url репозитория:
		использовать команду git remote set-url origin, например:
		git remote set-url origin git@github.com:organization/wi-backend.git
	2) Второй способ:
		Отредактировать файл .git/config: секция [remote "origin"] параметр - url. 
========================================

