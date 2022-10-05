-- Russian localization file for ruRU.
local L = ElvUI[1].Libs.ACL:NewLocale("ElvUI", "ruRU")

-- Core
L["Enable"] = "Включить"
L[" is loaded. For any issues or suggestions, please visit "] = " загружен. По любым вопросам или предложениям, пожалуйста, посетите "
L["Font"] = "Шрифт"
L["Size"] = "Размер"
L["Width"] = "Ширина"
L["Height"] = "Высота"
L["Alpha"] = "Прозрачность"
L["Outline"] = "Контур"
L["X-Offset"] = "X-смещение"
L["Y-Offset"] = "Y-смещение"
L["Icon Size"] = "Размер значка"
L["Font Outline"] = "Контур шрифта"

-- General Options
L["Plugin for |cffff7d0aElvUI|r by\nMerathilis."] = "Плагин для |cffff7d0aElvUI|r от\nMerahilis."
L["by Merathilis (|cFF00c0faEU-Shattrath|r)"] = true
L["AFK"] = "АФК"
L["Enable/Disable the MUI AFK Screen. Disabled if BenikUI is loaded"] = "Включить/отключить экран MUI AFK. Отключено, если загружен BenikUI"
L["Are you still there? ... Hello?"] = "Ты еще там? ... Привет?"
L["Logout Timer"] = "Таймер выхода"
L["SplashScreen"] = "Заставка"
L["Enable/Disable the Splash Screen on Login."] = "Включить/отключить заставку при входе в систему."
L["Options"] = "Параметры"
L["Description"] = "Описание"
L["General"] = "Общий"
L["Modules"] = "Модули"
L["Media"] = "Медиа"
L["MER_DESC"] = [=[|cffffffffMerathilis|r|cffff7d0aUI|r is an extension of ElvUI. It adds:

- a lot of new features
- a transparent overall look
- rewrote all existing ElvUI Skins
- my personal Layout

|cFF00c0faNote:|r It is compatible with most of other ElvUI plugins.
But if you install another Layout over mine, you must adjust it manually.

|cffff8000Newest additions are marked with: |r]=]

-- Core Options
L["Login Message"] = "Сообщение загрузки"
L["Enable/Disable the Login Message in Chat"] = "Включить/отключить сообщение о входе в чат"
L["Log Level"] = "Уровень журнала"
L["Only display log message that the level is higher than you choose."] = "Отображать только сообщение журнала о том, что уровень выше, чем вы выбрали."
L["Set to 2 if you do not understand the meaning of log level."] = "Установите на 2, если вы не понимаете значение уровня журнала."
L["Open the changelog window."] = "Откройте окно журнала изменений."

-- Bags
L["BANK_DESC"] = [=[If you have my Bags enabled the ElvUI Bags will be forced to be disabled! So if you want the ElvUI back, you need to disable my Bags first and then enable the ElvUI Bags again.]=]
L["Item Filter"] = "Фильтр товаров"
L["Junk"] = "Мусор"
L["Consumable"] = "Расходный материал"
L["Ammo"] = "Боеприпасы"
L["Azerite"] = "Азерит"
L["Equipments"] = "Экипировка"
L["EquipSets"] = "Эквип-cеты"
L["Legendarys"] = "Легендарные"
L["Collection"] = "Коллекция"
L["Favorite"] = "Любимый"
L["Goods"] = "Товары"
L["Quest"] = "Задание"
L["Anima"] = "Анима"
L["Relic"] = "Реликвия"
L["Collect Empty Slots"] = "Соберите пустые слоты"
L["Special Bags Color"] = "Цвет специальных сумок"
L["|nShow color for special bags:|n- Herb bag|n- Mining bag|n- Gem bag|n- Enchanted mageweave pouch"] = "|nПоказать цвет для особых сумок:|n- Сумка для трав|n- Сумка для добычи|n- Сумка для самоцветов|n- Зачарованный мешочек из магической ткани"
L["New Item Glow"] = "Свечение нового предмета"
L["Show ItemLevel"] = "Показать уровень предмета"
L["Pet Trash Currencies"] = "Валюта для мусора питомцев"
L[
	"|nIn patch 9.1, you can buy 3 battle pets by using specific trash items. Keep this enabled, will sort these items into Collection Filter, and won't be sold by auto junk selling."
	] = "|nВ патче 9.1 вы можете купить 3 боевых питомца, используя определенные предметы из мусора. Оставьте это включенным, эти предметы будут сортироваться в фильтре коллекции и не будут продаваться автоматически."
L["ItemLevel Threshold"] = "Порог уровня предмета"
L["BagSort Mode"] = "Режим сортировки сумок"
L[
	"|nIf you have empty slots after bag sort, please disable bags module, and turn off all bags filter in default ui containers."
	] = "|nЕсли у вас есть пустые слоты после сортировки сумок, отключите модуль сумок и отключите фильтр всех сумок в контейнерах пользовательского интерфейса по умолчанию."
L["Forward"] = "Вперед"
L["Backwards"] = "Назад"
L["Bags per Row"] = "Сумок в ряду"
L["|nIf Bags ItemFilter enabled, change the bags per row for anchoring."] = "«|nЕсли включен фильтр предметов сумок, измените количество сумок в строке для привязки»."
L["Bank bags per Row"] = "Банковских сумок в ряду"
L["|nIf Bags ItemFilter enabled, change the bank bags per row for anchoring."] = "|nЕсли фильтр предметов сумок включен, измените количество сумок в ряду для привязки."
L["Icon Size"] = "Размер значка"
L["Font Size"] = "Размер шрифта"
L["Bags Width"] = "Ширина сумки"
L["Bank Width"] = "Ширина банка"
L["Bag Search Tip"] = "|nClick to search your bag items.|nYou can type in item names or item equip locations.|n'boe' for items that bind on equip and 'quest' for quest items.|n|nPress key ESC to clear editbox."
L["Auto Deposit Tip"] = "|nLeft click to deposit reagents, right click to switch auto deposit.|nIf the button border shown, the reagents from your bags would auto deposit once you open your BankFrame."
L["Bag Sort Disabled"] = "BagSort has been disabled in the Options."
L["Sort"] = "Сортировать"
L["FreeSlots"] = "Total free slots"
L["Split Mode Enabled"] = "|nClick to split stacked items in your bags.|nYou can change 'split count' for each click thru the editbox."
L["Quick Split"] = "Быстрое разделение"
L["Favourite Mode"] = "Избранный режим"
L["Favourite Mode Enabled"] = "|nYou can now star items.|nIf 'Bags ItemFilter' enabled, the item you starred will add to Preferences filter slots.|nThis is not available to trash."
L["Reset junklist warning"] = "Are you sure to wipe the custom junk list?"
L["Junk Mode Enabled"] = "|nClick to tag item as junk.|nIf 'Autosell Junk' enabled, these items would be sold as well.|nThe list is saved account-wide, and won't be in the export data.|nYou can hold CTRL+ALT and click to wipe the custom junk list."
L["Custom Junk Mode"] = "Custom Junk List"
L["Delete Mode Enabled"] = "|nYou can destroy container item by holding CTRL+ALT. The item can be heirlooms or its quality lower then rare (blue)."
L["Item Delete Mode"] = "Режим удаления предмета"
L["Azerite Armor"] = "Азеритовая броня"
L["Equipment Set"] = "Комплект экипировки"
L["Korthia Relic"] = "Реликвия Кортии"
L["StupidShiftKey"] = true
L["Equipment Set Overlay"] = "Наложение набора снаряжения"
L["Show the associated equipment sets for the items in your bags (or bank)."] = "Покажите соответствующие наборы снаряжения для предметов в ваших сумках (или банке)."

-- Chat
L["CHAT_AFK"] = "[AFK]"
L["CHAT_DND"] = "[DND]"
L["BACK"] = "Назад"
L["|cFF00c0failvl|r: %d"] = true
L["|CFF1EFF00%s|r |CFFFF0000Sold.|r"] = true
L["Requires level: %d - %d"] = "Требуется уровень: %d - %d"
L["Requires level: %d - %d (%d)"] = "Требуется уровень: %d - %d (%d)"
L["(+%.1f Rested)"] = "(+%.1f Отдохнул)"
L["Unknown"] = "Неизвестно"
L["Chat Item Level"] = "Уровень предмета чата"
L["Shows the slot and item level in the chat"] = "Показывает слот и уровень предмета в чате"
L["Expand the chat"] = "Развернуть чат"
L["Chat Menu"] = "Меню чата"
L["Create a chat button to increase the chat size."] = "Создайте кнопку чата, чтобы увеличить размер чата."
L["Hide Player Brackets"] = "Скрыть скобки игроков"
L["Removes brackets around the person who posts a chat message."] = "Удаляет скобки вокруг ника игрока, который отправляет сообщение в чат."
L["Hide Chat Side Panel"] = "Скрыть боковую панель чата"
L["Removes the Chat SidePanel. |cffFF0000WARNING: If you disable this option you must adjust your Layout.|r"] = "Удаляет боковую панель чата. |cffFF0000ПРЕДУПРЕЖДЕНИЕ: Если вы отключите эту опцию, вы должны будете настроить макет.|r"
L["Chat Bar"] = "Панель чата"
L["Shows a ChatBar with different quick buttons."] = "Показывает панель чата с различными кнопками быстрого доступа."
L["Hide Community Chat"] = "Скрыть чат сообщества"
L["Adds an overlay to the Community Chat. Useful for streamers."] = "Добавляет оверлей в чат сообщества. Полезно для стримеров."
L["Chat Hidden. Click to show"] = "Скрытый чат. Нажмите, чтобы показать"
L["Click to open Emoticon Frame"] = "Нажмите, чтобы открыть рамку смайликов"
L["Emotes"] = "Эмоции"
L["Damage Meter Filter"] = "Фильтр индикатора урона"
L["Fade Chat"] = "Исчезающий чат"
L["Auto hide timeout"] = "Тайм-аут автоматического скрытия"
L["Seconds before fading chat panel"] = "За несколько секунд до исчезновения панели чата"
L["Seperators"] = "Разделители"
L["Orientation"] = "Ориентация"
L["Please use Blizzard Communities UI add the channel to your main chat frame first."] = "Пожалуйста, используйте пользовательский интерфейс сообществ Blizzard, чтобы добавить канал в основую панель чата."
L["Channel Name"] = "Название канала"
L["Abbreviation"] = "Сокращение"
L["Auto Join"] = "Автоматическое присоединение"
L["World"] = "Мир"
L["Channels"] = "Каналы"
L["Block Shadow"] = "Блокировка тени"
L["Hide channels not exist."] = "Скрыть каналы не существуют."
L["Only show chat bar when you mouse over it."] = "Показывать панель чата только при наведении на нее указателя мыши."
L["Button"] = "Кнопка"
L["Item Level Links"] = "Ссылки уровня предмета"
L["Filter"] = "Фильтр"
L["Block"] = "Блокировать"
L["Custom Online Message"] = "Пользовательское онлайн-сообщение"
L["Filters some messages out of your chat, that some Spam AddOns use."] = "Отфильтровывает некоторые сообщения из вашего чата, которые используют некоторые аддоны для спама."

L["Chat Link"] = "Ссылки чата"
L["Add extra information on the link, so that you can get basic information but do not need to click"] = "Добавить дополнительную информацию по ссылке, чтобы вы могли получить основную информацию, не нажимая на нее."
L["Additional Information"] = "Дополнительная информация"
L["Level"] = "Уровень"
L["Translate Item"] = "Переводить предмет"
L["Translate the name in item links into your language."] = "Переведите название в ссылках на товары на свой язык."
L["Icon"] = "Иконка"
L["Armor Category"] = "Категория брони"
L["Weapon Category"] = "Категория оружия"

-- Combat Alert
L["Combat Alert"] = "Сигнал боя"
L["Enable/Disable the combat message if you enter/leave the combat."] = "Включить/выключить боевое сообщение, если вы входите/выходите из боя."
L["Enter Combat"] = "Вступить в бой"
L["Leave Combat"] = "Выход из боя"
L["Stay Duration"] = "Продолжительность пребывания"
L["Custom Text"] = "Пользовательский текст"
L["Custom Text (Enter)"] = "Пользовательский текст (введите)"
L["Custom Text (Leave)"] = "Пользовательский текст (оставить)"
L["Color"] = "Цвет"

-- Information
L["Information"] = "Информация"
L["Support & Downloads"] = "Поддержка и загрузки"
L["Tukui"] = true
L["Github"] = true
L["CurseForge"] = true
L["Coding"] = "Кодирование"
L["Testing & Inspiration"] = "Тестирование и вдохновение"
L["Development Version"] = "Дев. версия"
L["Here you can download the latest development version."] = "Здесь вы можете скачать последнюю версию разработки."
L["Donations"] = "Пожертвования"

-- Modules
L["Here you find the options for all the different |cffffffffMerathilis|r|cffff8000UI|r modules."] = "Здесь вы найдете опции для всех различных модулей |cffffffffMerahilis|r|cffff8000UI|r."
L["Are you sure you want to reset %s module?"] = "Вы уверены, что хотите сбросить модуль %s?"
L["Reset All Modules"] = "Сбросить все модули"
L["Reset all %s modules."] = "Сбросить все %s модули."

-- GameMenu
L["GameMenu"] = "Меню игры"
L["Enable/Disable the MerathilisUI Style from the Blizzard GameMenu. (e.g. Pepe, Logo, Bars)"] = "Включить/отключить стиль MerathilisUI в игровом меню Blizzard. (например, Пепе, Логотип, Бары)"

-- Extended Vendor
L["Extended Vendor"] = "Расширенный продавец"
L["Extends the merchant page to show more items."] = "Расширяет страницу продавца, чтобы показать больше товаров."
L["Number of Pages"] = "Количество страниц"
L["The number of pages shown in the merchant frame."] = "Количество страниц, отображаемых в рамке продавца."

-- FlightMode
L["FlightMode"] = "Режим полета"
L["Enhance the |cff00c0faBenikUI|r FlightMode.\nTo completely disable the FlightMode go into the |cff00c0faBenikUI|r Options."] = "Улучшите режим полета |cff00c0faBenikUI|r.\nЧтобы полностью отключить режим полета, перейдите к параметрам |cff00c0faBenikUI|r."
L["Exit FlightMode"] = "Выйти из режима полета"
L["Left Click to Request Stop"] = "Щелкните левой кнопкой мыши, чтобы запросить остановку"

-- FlightPoint
L["Flight Point"] = "Точка полета"
L["Enable/Disable the MerathilisUI Flight Points on the FlightMap."] = "Включить/отключить точки полета MerathilisUI на карте полета."

-- Shadows
L["Shadows"] = "Тени"
L["Increase Size"] = "Увеличить размер"
L["Make shadow thicker."] = "Делает тени толще."

-- Mail
L["Mail"] = "Почта"
L["Alternate Character"] = "Альтернативный персонаж"
L["Alt List"] = "Альтернативный список"
L["Delete"] = "Удалить"
L["Favorites"] = "Избранное"
L["Favorite List"] = "Список избранных"
L["Name"] = "Имя"
L["Realm"] = "Реалм"
L["Add"] = "Добавить"
L["Please set the name and realm first."] = "Пожалуйста, сначала укажите имя и область."
L["Toggle Contacts"] = "Переключить контакты"
L["Online Friends"] = "Друзья онлайн"
L["Add To Favorites"] = "Добавить в избранное"
L["Remove From Favorites"] = "Удалить из Избранного"

-- MicroBar
L["Backdrop"] = "Фон"
L["Backdrop Spacing"] = "Отступ фона"
L["The spacing between the backdrop and the buttons."] = "Расстояние между фоном панели и кнопками."
L["Time Width"] = "Ширина времени"
L["Time Height"] = "Высота времени"
L["The spacing between buttons."] = "Расстояние между кнопками"
L["The size of the buttons."] = "Размер кнопок."
L["Slow Mode"] = "Медленный режим"
L["Update the additional text every 10 seconds rather than every 1 second such that the used memory will be lower."] = "Обновляет дополнительный текст каждые 10 секунд, а не каждую секунду, для уменьшения объема используемой памяти."
L["Display"] = "Дисплей"
L["Fade Time"] = "Время исчезновения"
L["Tooltip Position"] = "Положение всплывающей подсказки"
L["Mode"] = "Режим"
L["None"] = "Нет"
L["Class Color"] = "Цвет класса"
L["Custom"] = "Свой"
L["Additional Text"] = "Дополнительный текст"
L["Interval"] = "Интервал"
L["The interval of updating."] = "Интервал обновления."
L["Home"] = "Дом"
L["Left Button"] = "Левая кнопка"
L["Right Button"] = "Правая кнопка"
L["Left Panel"] = "Левая панель"
L["Right Panel"] = "Правая панель"
L["Button #%d"] = "Кнопка #%d"
L["Pet Journal"] = "Атлас питомцев"
L["Show Pet Journal"] = "Показывать Атлас питомцев"
L["Random Favorite Pet"] = "Случайный любимый питомец"
L["Screenshot"] = "Скриншот"
L["Screenshot immediately"] = "Быстрый скриншот"
L["Screenshot after 2 secs"] = "Скриншот через 2 секунды"
L["Toy Box"] = "Коробка игрушек"
L["Collections"] = "Коллекции"
L["Show Collections"] = "Показать Коллекции"
L["Random Favorite Mount"] = "Случайное любимое средство передвижения"
L["Decrease the volume"] = "Уменьшить громкость"
L["Increase the volume"] = "Увеличить громкость"
L["Profession"] = "Профессия"
L["Volume"] = "Громкость"

-- Misc
L["Misc"] = "Разное"
L["Artifact Power"] = "Мощность артефакта"
L["has appeared on the MiniMap!"] = "появился на миникарте!"
L["Alt-click, to buy an stack"] = "Alt-клик, чтобы купить стак"
L["Announce"] = "Объявить"
L["Skill gains"] = true
L[" members"] = " участники"
L["Name Hover"] = true
L["Shows the Unit Name on the mouse."] = true
L["Undress"] = "Раздеться"
L["Flashing Cursor"] = "Мигающий курсор"
L["Lights up the cursor to make it easier to see."] = "Курсор подсвечивается, чтобы его было лучше видно."
L["Accept Quest"] = "Принять задание"
L["Placed Item"] = "Размещенный предмет"
L["Stranger"] = "Незнакомец"
L["Keystones"] = "Камень возвращения"
L["GUILD_MOTD_LABEL2"] = "Сообщение дня для гильдии"
L["LFG Member Info"] = true
L["Shows role informations in your tooltip in the lfg frame."] = true
L["MISC_REPUTATION"] = "Reputation"
L["MISC_PARAGON"] = "Paragon"
L["MISC_PARAGON_REPUTATION"] = "Paragon Reputation"
L["MISC_PARAGON_NOTIFY"] = "Max Reputation - Receive Reward."
L["Fun Stuff"] = true
L["Change the NPC Talk Frame."] = "Измените рамку разговора с NPC."
L["Press CTRL + C to copy."] = "Нажмите CTRL + C, чтобы скопировать."
L["Wowhead Links"] = "Ссылки на Wowhead"
L["Adds Wowhead links to the Achievement- and WorldMap Frame"] = "Добавляет ссылки Wowhead на рамку достижений и карты мира."
L["Highest Quest Reward"] = "Наивысшая награда за задание"
L["Automatically select the item with the highest reward."] = "Автоматически выбирает предмет с самой высокой наградой."
L["Item Alerts"] = true
L["Announce in chat when someone placed an usefull item."] = true
L["Maw ThreatBar"] = true
L["Replace the Maw Threat Display, with a simple StatusBar"] = true
L["Miscellaneous"] = "Разное"
L["Guild News Item Level"] = true
L["Add Item level Infos in Guild News"] = true
L["Spell Alert Scale"] = true
L["Add Title"] = "Добавить заголовок"
L["Display an additional title."] = "Отображение дополнительного заголовка."
L["Add LFG group info to tooltip."] = true
L["Reskin Icon"] = true
L["Change role icons."] = "Изменить значки ролей."
L["Line"] = true
L["Alerts"] = true
L["Call to Arms"] = true
L["Feasts"] = "Пиры"
L["Toys"] = true
L["Random Toy"] = true
L["Creates a random toy macro."] = true
L["Text Style"] = true
L["COLOR"] = true
L.ANNOUNCE_FP_PRE = "{rt1} %s готовит %s. {rt1}"
L.ANNOUNCE_FP_CLICK = "{rt1} %s создает %s. Кликаем! {rt1}"
L.ANNOUNCE_FP_USE ="{rt1} %s использует %s. {rt1}"
L.ANNOUNCE_FP_CAST = "{rt1} %s создает %s. {rt1}"
L["Hide Boss Banner"] = true
L["This will hide the popup, that shows loot, after you kill a boss"] = true

-- Nameplates
L["NamePlates"] = true
L["Enhanced NameplateAuras"] = true

-- Tooltip
L["Your Status:"] = "Ваш статус:"
L["Your Status: Incomplete"] = "Ваш статус: Не завершен"
L["Your Status: Completed on "] = "Ваш статус: Завершено"
L["Adds an icon for spells and items on your tooltip."] = "Добавляет значок заклинаний и предметов во всплывающую подсказку."
L["Adds an Icon for battle pets on the tooltip."] = "Добавляет значок для боевых питомцев во всплывающую подсказку."
L["Adds an Icon for the faction on the tooltip."] = "Добавляет значок фракции во всплывающую подсказку."
L["Adds information to the tooltip, on which char you earned an achievement."] = "Добавляет во всплывающую подсказку информацию о том, на каком персонаже вы получили достижение."
L["Keystone"] = "Эпохальный ключ"
L["Adds descriptions for mythic keystone properties to their tooltips."] = "Добавляет описания свойств мифических ключей во всплывающие подсказки."
L["Title Color"] = "Цвет заголовка"
L["Change the color of the title in the Tooltip."] = "Измените цвет заголовка в подсказке."
L["FACTION"] = "Фракция"
L["HEART_OF_AZEROTH_MISSING_ACTIVE_POWERS"] = "Активные азеритовые таланты"
L["Only Icons"] = "Только значки"
L["I"] = "1 ур."
L["II"] = "2 ур."
L["III"] = "3 ур."
L["Display in English"] = "Отображать английские названия"
L["Show icon"] = "Показать значок"
L["Show the spell icon along with the name."] = "Показать значок заклинания вместе с названием."
L["Domination Rank"] = "Ранг Господства"
L["Show the rank of shards."] = "Показать ранг осколков."
L["Covenant: <Not in Group>"] = "Ковенант: <Нет в группе>"
L["Covenant: <Checking...>"] = "Ковенант: <Проверка...>"
L["Covenant: <None - Too low>"] = "Ковенант: <Нет — Слишком низко>"
L["Covenant"] = "Ковенант"
L["Covenant: "] = "Ковенант: "
L["Shows the Players Covenant on the Tooltip."] = "Отображает Ковенант игроков во всплывающей подсказке."
L["Show not in group"] = "Показывать не в группе"
L["Keep the Covenant Line when not in a group. Showing: <Not in Group>"] = "Соблюдайте Линию Ковенанта, когда не находитесь в группе. Отображается: <Нет в группе>"
L["Kyrian"] = "Кирии"
L["Venthyr"] = "Вентир"
L["NightFae"] = "Ночной народец"
L["Necrolord"] = "Некролорд"
L["Pet Battle"] = "Битва питомцев"
L["Tooltip Icons"] = "Значки подсказок"

-- Notification
L["Notification"] = "Уведомления"
L["Display a Toast Frame for different notifications."] = "Отображение всплывающей рамки для различных уведомлений."
L["This is an example of a notification."] = "Это пример уведомления."
L["Notification Mover"] = "Перемещение уведомлений"
L["%s slot needs to repair, current durability is %d."] = "Слот %s нуждается в ремонте, текущая прочность %d."
L["You have %s pending calendar invite(s)."] = "У вас есть %s ожидающих приглашений в календаре."
L["You have %s pending guild event(s)."] = "У вас есть %s незавершенных событий гильдии."
L["Event \"%s\" will end today."] = "Событие \"%s\" завершится сегодня."
L["Event \"%s\" started today."] = "Событие \"%s\" началось сегодня."
L["Event \"%s\" is ongoing."] = "Событие \"%s\" продолжается."
L["Event \"%s\" will end tomorrow."] = "Событие \"%s\" закончится завтра."
L["Here you can enable/disable the different notification types."] = "Здесь вы можете включить/отключить различные типы уведомлений."
L["Enable Mail"] = "Включить почту"
L["Enable Vignette"] = "Включить виньетирование"
L["If a Rare Mob or a treasure gets spotted on the minimap."] = "Если на миникарте будет замечен редкий моб или сокровище."
L["Enable Invites"] = "Включить приглашения"
L["Enable Guild Events"] = "Включить события гильдии"
L["No Sounds"] = "Нет звуков"
L["Vignette Print"] = "Отображение виньетки"
L["Prints a clickable Link with Coords in the Chat."] = "Отображает кликабельную ссылку с координатами в чате."
L["Quick Join"] = "Быстрое присоединение"
L["Title Font"] = "Шрифт заголовка"
L["Text Font"] = "Шрифт текста"

-- DataTexts
-- DataBars
L["DataBars"] = "Инфо-полосы"
L["Add some stylish buttons at the bottom of the DataBars"] = true
L["Style DataBars"] = true

-- PVP
L["Automatically cancel PvP duel requests."] = "Автоматически отменять запросы на PvP-дуэли."
L["Automatically cancel pet battles duel requests."] = "Автоматически отменять запросы на дуэли в битвах питомцев."
L["Announce in chat if duel was rejected."] = "Объявляет в чате, если дуэль была отклонена."
L["MER_DuelCancel_REGULAR"] = "Duel request from %s rejected."
L["MER_DuelCancel_PET"] = "Pet duel request from %s rejected."
L["Show your PvP killing blows as a popup."] = "Покажите свои смертельные удары в PvP во всплывающем окне."
L["Sound"] = "Звук"
L["Play sound when killing blows popup is shown."] = "Воспроизвести звук, когда отображается всплывающее окно с убийственными ударами."
L["PvP Auto Release"] = "Автопокидание в PvP"
L["Automatically release body when killed inside a battleground."] = "Автоматически покидать тело, если его убивают на поле боя."
L["Check for rebirth mechanics"] = "Проверить механику возрождения"
L["Do not release if reincarnation or soulstone is up."] = "Не покидать, если реинкарнация или камень души активны."

-- Actionbars
L["Specialization Bar"] = "Панель специализации"
L["EquipSet Bar"] = "Панель экипировки"
L["Auto Buttons"] = "Автоматические кнопки"
L["Bind Font Size"] = "Привязать размер шрифта"
L["Trinket Buttons"] = "Кнопки для аксессуаров"
L["Color by Quality"] = "Цвет по качеству"
L["Quest Buttons"] = "Кнопки заданий"
L["Blacklist Item"] = "Черный список предметов"
L["Whitelist Item"] = "Белый список предметов"
L["Add Item ID"] = "Добавить ID предмета"
L["Delete Item ID"] = "Удалить ID предмета"
L["Spell Feedback"] = "Обратная связь по заклинаниям"
L["Creates a texture to show the recently pressed buttons."] = "Создает текстуру для отображения недавно нажатых кнопок."
L["Frame Strata"] = "Слой фрейма"
L["Frame Level"] = "Уровень фрейма"
L["KeyFeedback"] = true
L["Mirror"] = true
L["Mirror Button Size"] = true
L["Mirror Direction"] = true
L["LEFT"] = "ЛЕВО"
L["RIGHT"] = "ПРАВО"

-- AutoButtons
L["AutoButtons"] = "Автоматические кнопки"
L["Bar"] = "Панель"
L["Only show the bar when you mouse over it."] = "Показывать панель только при наведении на нее указателя мыши."
L["Bar Backdrop"] = "Фон панели"
L["Show a backdrop of the bar."] = "Покажите фон панели."
L["Button Width"] = "Ширина кнопки"
L["The width of the buttons."] = "Ширина кнопок."
L["Button Height"] = "Высота кнопки"
L["The height of the buttons."] = "Высота кнопок."
L["Counter"] = "Счетчик"
L["Button Groups"] = "Кнопки групп"
L["Key Binding"] = "Привязка клавиш"
L["Custom Items"] = "Свои предметы"
L["List"] = "Список"
L["New Item ID"] = "ID нового предмета"
L["Auto Button Bar"] = "Панель автокнопок"
L["Quest Items"] = "Предметы для заданий"
L["Equipments"] = "Экипировка"
L["Potions"] = "Зелья"
L["Flasks"] = "Настои"
L["Food"] = "Еда"
L["Crafted by mage"] = "Создано магом"
L["Banners"] = "Баннеры"
L["Utilities"] = "Утилиты"
L["Custom Items"] = "Свои предметы"
L["Fade Time"] = "Время исчезновения"
L["Alpha Min"] = "Минимальная прозрачность"
L["Alpha Max"] = "Максимальная прозрачность"
L["Inherit Global Fade"] = true
L["Anchor Point"] = "Точка привязки"
L["The first button anchors itself to this point on the bar."] = "Первая кнопка привязывается к этой точке на панели."

-- Armory
L["Armory"] = "Оружейная"
L["ARMORY_DESC"] = [=[The |cffff7d0aArmory Mode|r only works with the ElvUI 'Display Character Info'. You may need to reload your UI:

ElvUI - General - BlizzUI Improvements - Display Character Infos.]=]
L["Enable/Disable the |cffff7d0aMerathilisUI|r Armory Mode."] = "Включить/отключить |cffff7d0aMerathilisUI|r Режим оружейной."
L["Durability"] = "Прочность"
L["Enable/Disable the display of durability information on the character window."] = "Включить/выключить отображение информации о прочности в окне персонажа."
L["Damaged Only"] = "Только поврежденные"
L["Only show durability information for items that are damaged."] = "Показывать информацию о прочности только для поврежденных предметов."
L["Itemlevel"] = "Уровень предмета"
L["Enable/Disable the display of item levels on the character window."] = "Включить/выключить отображение уровней предметов в окне персонажа."
L["Level"] = "Уровень"
L["Full Item Level"] = "Полный уровень предмета"
L["Show both equipped and average item levels."] = "Показывать как экипированные, так и средние уровни предметов."
L["Item Level Coloring"] = "Цетной уровень предмета"
L["Color code item levels values. Equipped will be gradient, average - selected color."] = true
L["Color of Average"] = "Цвет среднего"
L["Sets the color of average item level."] = "Устанавливает цвет среднего уровня предмета."
L["Only Relevant Stats"] = true
L["Show only those primary stats relevant to your spec."] = true
L["Item Level"] = "Уровень предметов"
L["Categories"] = "Категории"
L["Slot Gradient"] = true
L["Shows a gradiation texture on the Character Slots."] = true
L["Indicators"] = "Индикаторы"
L["Transmog"] = "Трансмогрификация"
L["Shows an arrow indictor for currently transmogrified items."] = true
L["Illusion"] = "Иллюзия"
L["Shows an indictor for weapon illusions."] = "Показывает индикатор иллюзий оружия."
L["Empty Socket"] = "Пустое гнездо"
L["Not Enchanted"] = "Не зачарованный"
L["Warnings"] = "Предупреждения"
L["Shows an indicator for missing sockets and enchants."] = "Показывает индикатор отсутствующих сокетов и чар."
L["Expanded Size"] = "Расширенный размер"
L["This will increase the Character Frame size a bit."] = "Это немного увеличит размер рамки персонажа."
L["Armor Set"] = "Комплект брони"
L["Colors Set Items in a different color."] = "Цвета наборов предметов другим цветом."
L["Armor Set Gradient Texture Color"] = true
L["Full Item Level"] = "Полный уровень предмета"
L["Show both equipped and average item levels."] = "Показывать как экипированные, так и средние уровни предметов."
L["Item Level Coloring"] = "Раскраска уровня предмета"
L["Color code item levels values. Equipped will be gradient, average - selected color."] = true
L["Color of Average"] = "Цвет среднего"
L["Sets the color of average item level."] = "Устанавливает цвет среднего уровня предмета."
L["Full Item Level"] = "Полный уровень предмета"
L["Show both equipped and average item levels."] = "Показывать как экипированные, так и средние уровни предметов."
L["Item Level Coloring"] = "Раскраска уровня предмета"
L["Color code item levels values. Equipped will be gradient, average - selected color."] = true
L["Color of Average"] = "Цвет среднего"
L["Sets the color of average item level."] = "Устанавливает цвет среднего уровня предмета."
L["Warning Gradient Texture Color"] = true
L["Class Color Gradient"] = true

-- Media
L["Zone Text"] = "Текст зоны"
L["Font Size"] = "Размер шрифта"
L["Subzone Text"] = "Текст подзоны"
L["PvP Status Text"] = "Текст статуса PvP"
L["Misc Texts"] = "Разные тексты"
L["Mail Text"] = "Текст письма"
L["Chat Editbox Text"] = "Текст в поле редактирования чата"
L["Gossip and Quest Frames Text"] = "Текст сплетен и заданий"
L["Objective Tracker Header Text"] = "Текст заголовка отслеживания заданий"
L["Objective Tracker Text"] = "Текст отслеживания заданий"
L["Banner Big Text"] = "Большой текст баннера"

L["MER_MEDIA_ZONES"] = {
	"Washington",
	"Moscow",
	"Moon Base",
	"Goblin Spa Resort",
	"Illuminaty Headquaters",
	"Elv's Closet",
	"BlizzCon",
}
L["MER_MEDIA_PVP"] = {
	"(Horde Territory)",
	"(Alliance Territory)",
	"(Contested Territory)",
	"(Russian Territory)",
	"(Aliens Territory)",
	"(Cats Territory)",
	"(Japanese Territory)",
	"(EA Territory)",
}
L["MER_MEDIA_SUBZONES"] = {
	"Administration",
	"Hellhole",
	"Alley of Bullshit",
	"Dr. Pepper Storage",
	"Vodka Storage",
	"Last National Bank",
}
L["MER_MEDIA_PVPARENA"] = {
	"(PvP)",
	"No Smoking!",
	"Only 5% Taxes",
	"Free For All",
	"Self destruction is in process",
}

-- Unitframes
L["UnitFrames"] = "Рамки юнитов"
L["Adds a shadow to the debuffs that the debuff color is more visible."] = true
L["Swing Bar"] = true
L["Creates a weapon Swing Bar"] = true
L["Main-Hand Color"] = "Цвет основной руки"
L["Off-Hand Color"] = "Цвет левой руки"
L["Two-Hand Color"] = "Цвет двуручного"
L["GCD Bar"] = true
L["Creates a Global Cooldown Bar"] = "Создает глобальную полосу перезарядки"
L["UnitFrame Style"] = true
L["Adds my styling to the Unitframes if you use transparent health."] = true
L["Change the default role icons."] = true
L["Changes the Heal Prediction texture to the default Blizzard ones."] = true
L["Add a glow in the end of health bars to indicate the over absorb."] = "Добавляет свечение в конце полосок здоровья, чтобы указать на чрезмерное поглощение."
L["Add the Blizzard over absorb glow and overlay to ElvUI unit frames."] = "Добавляет свечение чрезмерного поглощения Blizzard поверх юнит фреймов ElvUI."
L["Auto Height"] = "Автоматическая высота"
L["Blizzard Absorb Overlay"] = "Наложение поглощения Blizzard"
L["Blizzard Over Absorb Glow"] = "Свечение избыточного поглощения"
L["Blizzard Style"] = "Стиль Blizzard"
L["Change the color of the absorb bar."] = "Изменить цвет полосы поглощения."
L["Custom Texture"] = "Benutzerdefinierte Textur"
L["Enable the replacing of ElvUI absorb bar textures."] = "Включить замену ElvUI текстур полос поглощения."
L["Here are some buttons for helping you change the setting of all absorb bars by one-click."] = "Здесь несколько кнопок, которые помогут вам изменить настройки всех полос поглощения одним щелчком мыши."
L["Max Overflow"] = "Макс. переполнение"
L["Modify the texture of the absorb bar."] = "Измените текстуру полосы поглощения."
L["Overflow"] = "Переполнение"
L["Set %s to %s"] = "Установить %s на %s"
L["Set All Absorb Style to %s"] = "Установить весь стиль поглощения на %s"
L["The absorb style %s and %s is highly recommended with %s tweaks."] = "Стиль поглощения %s и %s настоятельно рекомендуется с настройками %s."
L["The selected texture will override the ElvUI default absorb bar texture."] = "Выбранная текстура переопределит стандартную текстуру полосы поглощения ElvUI."
L["Use the texture from Blizzard Raid Frames."] = "Используйте текстуру из Blizzard Raid Frames."
L["Raid Icon"] = "Значок рейда"
L["Change the default raid icons."] = true
L["Highlight"] = true
L["Adds an own highlight to the Unitframes"] = true
L["Auras"] = "Ауры"
L["Adds an shadow around the auras"] = true
L["Power"] = true
L["Enable the animated Power Bar"] = true
L["Select Model"] = true
L["Type the Model ID"] = true
L["Role Icons"] = "Иконки ролей"
L["Heal Prediction"] = true
L["Add an additional overlay to the absorb bar."] = true

-- LocationPanel
L["Location Panel"] = "Панель местоположения"
L["Update Throttle"] = true
L["The frequency of coordinates and zonetext updates. Check will be done more often with lower values."] = true
L["Full Location"] = "Полное местоположение"
L["Color Type"] = "Тип цвета"
L["Custom Color"] = "Свой цвет"
L["Reaction"] = "Реакция"
L["Location"] = "Расположение"
L["Coordinates"] = "Координаты"
L["Teleports"] = "Телепорты"
L["Portals"] = "Порталы"
L["Link Position"] = "Ссылка на позицию"
L["Allow pasting of your coordinates in chat editbox via holding shift and clicking on the location name."] = "Разрешите вставку ваших координат в поле редактирования чата, удерживая клавишу Shift и нажимая на название местоположения."
L["Relocation Menu"] = true
L["Right click on the location panel will bring up a menu with available options for relocating your character (e.g. Hearthstones, Portals, etc)."] = "Щелкните правой кнопкой мыши на панели локации, чтобы открыть меню с доступными вариантами перемещения вашего персонажа (например, Камень возвращения, Порталы и т. д.)."
L["Custom Width"] = "Пользовательская ширина"
L["By default menu's width will be equal to the location panel width. Checking this option will allow you to set own width."] = "По умолчанию ширина меню будет равна ширине панели локации. Отметив эту опцию, вы сможете установить собственную ширину."
L["Justify Text"] = "Выровнять текст"
L["Auto Width"] = "Автоматическая ширина"
L["Change width based on the zone name length."] = "Измените ширину в зависимости от длины имени зоны."
L["Hearthstone Location"] = "Расположение каменя возвращения"
L["Show the name on location your Hearthstone is bound to."] = "Покажите название локации, к которой привязан ваш камень возвращения."
L["Combat Hide"] = "Скрывать в бою"
L["Show/Hide all panels when in combat"] = "Показать/скрыть все панели во время боя"
L["Hide In Class Hall"] = "Скрывать в оплоте класса"
L["Hearthstone Location"] = "Расположение каменя возвращения"
L["Hearthstone Toys Order"] = true
L["Show hearthstones"] = "Показать камни возвращения"
L["Show hearthstone type items in the list."] = "Показать в списке предметы типа камня возвращения."
L["Show Toys"] = "Показать игрушки"
L["Show toys in the list. This option will affect all other display options as well."] = "Показать игрушки в списке. Этот параметр также повлияет на все остальные параметры отображения."
L["Show spells"] = "Показать заклинания"
L["Show relocation spells in the list."] = "Показать заклинания перемещения в списке."
L["Show engineer gadgets"] = "Показать гаджеты инженера"
L["Show items used only by engineers when the profession is learned."] = "Показать предметы, используемые только инженерами, когда профессия изучена."
L["Ignore missing info"] = "Игнорировать недостающую информацию"
L["MER_LOCPANEL_IGNOREMISSINGINFO"] = [[Due to how client functions some item info may become unavailable for a period of time. This mostly happens to toys info.
When called the menu will wait for all information being available before showing up. This may resul in menu opening after some concidarable amount of time, depends on how fast the server will answer info requests.
By enabling this option you'll make the menu ignore items with missing info, resulting in them not showing up in the list.]]
L["Info for some items is not available yet. Please try again later"] = "Информация о некоторых товарах пока недоступна. Пожалуйста, попробуйте позже"
L["Update canceled."] = "Обновление отменено."
L["Item info is not available. Waiting for it. This can take some time. Menu will be opened automatically when all info becomes available. Calling menu again during the update will cancel it."] = "Информация о товаре недоступна. Ожидайте. Это может занять некоторое время. Меню откроется автоматически, когда вся информация станет доступной. Повторный вызов меню во время обновления отменит его."
L["Update complete. Opening menu."] = "Обновление завершено. Открытие меню."
L["Hide Coordinates"] = "Скрыть координаты"
L["Dungeon Teleports"] = "Телепорты подземелий"
L["Hide In Combat"] = "Скрывать в бою"

-- Maps
L["Maps"] = "Карты"
L["World Map"] = "Карта мира"
L["Instance Difficulty"] = "Сложность подземелья"
L["Duration"] = true
L["Fade Out"] = true
L["Scale"] = "Масштаб"
L["Reskin the instance diffculty in text style."] = "Измените сложность подземелья в текстовом стиле."
L["Hide Blizzard"] = true
L["Change the shape of ElvUI minimap."] = "Измените форму миникарты ElvUI."
L["Height Percentage"] = true
L["Percentage of ElvUI minimap size."] = true
L["MiniMap Buttons"] = true
L["Minimap Ping"] = "Пинг на миникарте"
L["Add Server Name"] = "Добавить имя сервера"
L["Only In Combat"] = true
L["Fade-In"] = true
L["The time of animation. Set 0 to disable animation."] = "Время анимации. Установите 0, чтобы отключить анимацию."
L["Blinking Minimap"] = true
L["Enable the blinking animation for new mail or pending invites."] = true
L["Super Tracker"] = "Супер трекер"
L["Description"] = "Описание"
L["Additional features for waypoint."] = "Дополнительные возможности для путевой точки."
L["Auto Track Waypoint"] = "Автосопровождение путевой точки"
L["Auto track the waypoint after setting."] = "Автоматическое отслеживание путевой точки после настройки."
L["Right Click To Clear"] = "Щелкните правой кнопкой мыши, чтобы очистить"
L["Right click the waypoint to clear it."] = "Щелкните путевую точку правой кнопкой мыши, чтобы очистить ее."
L["No Distance Limitation"] = "Без ограничения расстояния"
L["Force to track the target even if it over 1000 yds."] = "Принудительно отслеживать цель, даже если она дальше чем 1000 м."
L["Distance Text"] = "Текст дистанции"
L["Only Number"] = "Только цифры"
L["Add Command"] = true
L["Add a input box to the world map."] = true
L["Are you sure to delete the %s command?"] = true
L["Can not set waypoint on this map."] = true
L["Command"] = "Команда"
L["Command Configuration"] = true
L["Command List"] = true
L["Delete Command"] = true
L["Delete the selected command."] = true
L["Enable to use the command to set the waypoint."] = true
L["Go to ..."] = true
L["Input Box"] = true
L["New Command"] = true
L["No Arg"] = true
L["Smart Waypoint"] = true
L["The argument is invalid."] = true
L["The argument is needed."] = true
L["The command to set a waypoint."] = true
L["The coordinates contain illegal number."] = true
L["Waypoint %s has been set."] = true
L["Waypoint Parse"] = true
L["You can paste any text contains coordinates here, and press ENTER to set the waypoint in map."] = true
L["illegal"] = true
L["invalid"] = true
L["Because of %s, this module will not be loaded."] = true
L["This module will help you to reveal and resize maps."] = true
L["Reveal"] = true
L["Use Colored Fog"] = true
L["Remove Fog of War from your world map."] = true
L["Style Fog of War with special color."] = true
L["Resize world map."] = true
L["LFG Queue"] = true

-- SMB
L["Minimap Buttons"] = "Кнопки миникарты"
L["Add an extra bar to collect minimap buttons."] = "Добавляет дополнительную панель для сбора кнопок миникарты."
L["Toggle minimap buttons bar."] = "Переключить панель кнопок миникарты."
L["Mouse Over"] = "При наведении"
L["Only show minimap buttons bar when you mouse over it."] = "Показывать панель кнопок миникарты только при наведении на нее указателя мыши."
L["Minimap Buttons Bar"] = "Панель кнопок миникарты"
L["Bar Backdrop"] = "Фон панели"
L["Show a backdrop of the bar."] = "Покажите фон панели."
L["Backdrop Spacing"] = "Отступ фона"
L["The spacing between the backdrop and the buttons."] = "Расстояние между фоном панели и кнопками."
L["Inverse Direction"] = "Обратное направление"
L["Reverse the direction of adding buttons."] = "Меняет направление добавления кнопок на противоположное."
L["Orientation"] = "Ориентация"
L["Arrangement direction of the bar."] = "Устройство направления панели."
L["Drag"] = "Тянуть"
L["Horizontal"] = "Горизонтально"
L["Vertical"] = "Вертикально"
L["Buttons"] = "Кнопок"
L["Buttons Per Row"] = "Кнопок в ряду"
L["The amount of buttons to display per row."] = "Количество кнопок в каждом ряду"
L["Button Size"] = "Размер кнопок"
L["The size of the buttons."] = "Размер кнопок."
L["Button Spacing"] = "Отступ кнопок"
L["The spacing between buttons."] = "Расстояние между кнопками."
L["Blizzard Buttons"] = "Кнопки Blizzard"
L["Calendar"] = "Календарь"
L["Add calendar button to the bar."] = "Добавить кнопку календаря на панель."
L["Garrison"] = "Гарнизон"
L["Add garrison button to the bar."] = "Добавить кнопку гарнизона на панель."

-- Raid Marks
L["Raid Markers"] = "Метки рейда"
L["Raid Markers Bar"] = "Панель меток рейда"
L["Raid Utility"] = "Управление рейдом"
L["Left Click to mark the target with this mark."] = "Щелкните левой кнопкой мыши, чтобы отметить цель этой меткой."
L["Right Click to clear the mark on the target."] = "Щелкните правой кнопкой мыши, чтобы убрать метку с цели."
L["%s + Left Click to place this worldmarker."] = "%s + левая кнопка мыши, чтобы разместить этот мировую метку."
L["%s + Right Click to clear this worldmarker."] = "%s + правая кнопка мыши, чтобы очистить эту мировую метку."
L["%s + Left Click to mark the target with this mark."] = "%s + левая кнопка мыши, чтобы отметить цель этой меткой."
L["%s + Right Click to clear the mark on the target."] = "%s + правая кнопка мыши, чтобы удалить метку с цели."
L["Click to clear all marks."] = "Нажмите, чтобы удалить все отметки."
L["takes 3s"] = "занимает 3c"
L["%s + Click to remove all worldmarkers."] = "%s + щелкните, чтобы удалить все мировые метки."
L["Click to remove all worldmarkers."] = "Нажмите, чтобы удалить все мировые метки."
L["%s + Click to clear all marks."] = "% s + щелкните, чтобы удалить все метки."
L["Left Click to ready check."] = "Щелкните левой кнопкой мыши, чтобы провести проверку готовности."
L["Right click to toggle advanced combat logging."] = "Щелкните правой кнопкой мыши, чтобы включить расширенный журнал боя."
L["Left Click to start count down."] = "Щелкните левой кнопкой мыши, чтобы начать обратный отсчет."
L["Add an extra bar to let you set raid markers efficiently."] = "Добавляет дополнительную панель, позволяющую эффективно устанавливать маркеры рейда."
L["Toggle raid markers bar."] = "Переключить панель меток рейда."
L["Inverse Mode"] = "Обратный режим"
L["Swap the functionality of normal click and click with modifier keys."] = "Поменяйте местами функциональность обычного щелчка и щелкните с помощью клавиш-модификаторов."
L["Visibility"] = "Видимость"
L["In Party"] = "В группе"
L["Always Display"] = "Всегда отображать"
L["Mouse Over"] = "При наведении"
L["Only show raid markers bar when you mouse over it."] = "Показывать панель рейдовых меток только при наведении на нее указателя мыши."
L["Tooltip"] = "Подсказка"
L["Show the tooltip when you mouse over the button."] = "Показывать всплывающую подсказку при наведении указателя мыши на кнопку."
L["Modifier Key"] = "Клавиша-модификатор"
L["Set the modifier key for placing world markers."] = "Установите клавишу-модификатор для размещения мировых меток."
L["Shift Key"] = "Клавиша Shift"
L["Ctrl Key"] = "Клавиша Ctrl"
L["Alt Key"] = "Клавиша Alt"
L["Bar Backdrop"] = "Фон панели"
L["Show a backdrop of the bar."] = "Покажите фон панели."
L["Backdrop Spacing"] = "Отступ фона"
L["The spacing between the backdrop and the buttons."] = "Расстояние между фоном панели и кнопками."
L["Orientation"] = "Ориентация"
L["Arrangement direction of the bar."] = "Устройство направления панели."
L["Raid Buttons"] = "Кнопка рейда"
L["Ready Check"] = "Проверка готовности"
L["Advanced Combat Logging"] = "Расширенный журнал боя"
L["Left Click to ready check."] = "Щелкните левой кнопкой мыши, чтобы провести проверку готовности."
L["Right click to toggle advanced combat logging."] = "Щелкните правой кнопкой мыши, чтобы включить расширенный журнал боя."
L["Count Down"] = "Обратный отсчет"
L["Count Down Time"] = "Обратный отсчет времени"
L["Count down time in seconds."] = "Обратный отсчет времени в секундах."
L["Button Size"] = "Размер кнопок"
L["The size of the buttons."] = "Размер кнопок."
L["Button Spacing"] = "Отступ кнопок"
L["The spacing between buttons."] = "Расстояние между кнопками."
L["Button Backdrop"] = "Фон кнопки"
L["Button Animation"] = "Анимация кнопки"

-- Raid Buffs
L["Raid Buff Reminder"] = "Напоминание о баффе рейда"
L["Shows a frame with flask/food/rune."] = "Показывает рамку с флягой/едой/руной."
L["Class Specific Buffs"] = "Классовые баффы"
L["Shows all the class specific raid buffs."] = "Показывает все рейдовые баффы для каждого класса."
L["Change the alpha level of the icons."] = "Измените прозрачность значков."
L["Shows the pixel glow on missing raidbuffs."] = "Показывает свечение пикселей на отсутствующих рейдбаффах."

-- Raid Manager
L["Raid Manager"] = "Рейд-менеджер"
L["This will disable the ElvUI Raid Control and replace it with my own."] = "Это отключит ElvUI Raid Control и заменит его моим собственным."
L["Open Raid Manager"] = "Открыть рейд-менеджер"
L["Pull Timer Count"] = "Отсчет таймера вытягивания"
L["Change the Pulltimer for DBM or BigWigs"] = "Измените Pulltimer для DBM или BigWigs"
L["Only accept values format with '', e.g.: '5', '8', '10' etc."] = "Принимайте только формат значений с '', например: '5', '8', '10' и т. д."

-- Reminder
L["Reminder"] = "Напоминание"
L["Reminds you on self Buffs."] = "Напоминает вам о собственных баффах."

-- Cooldowns
L["Cooldowns"] = "Перезарядки"
L["Cooldown Flash"] = true
L["Settings"] = "Настройки"
L["Fadein duration"] = true
L["Fadeout duration"] = true
L["Duration time"] = true
L["Animation size"] = true
L["Watch on pet spell"] = true
L["Transparency"] = true
L["Test"] = "Тест"
L["Sort Upwards"] = true
L["Sort by Expiration Time"] = true
L["Show Self Cooldown"] = true
L["Show Icons"] = true
L["Show In Party"] = true
L["Show In Raid"] = true
L["Show In Arena"] = true
L["Spell Name"] = true
L["Spell List"] = true

-- CVars
L["\n\nDefault: |cff00ff001|r"] = true
L["\n\nDefault: |cffff00000|r"] = true
L["alwaysCompareItems"] = true
L["alwaysCompareItems_DESC"] = "Always show item comparsion tooltips\r\rDefault: |cffff00000|r"
L["breakUpLargeNumbers"] = true
L["breakUpLargeNumbers_DESC"] = "Toggles using commas in large numbers\r\rDefault: |cff00ff001|r"
L["scriptErrors"] = true
L["enableWoWMouse"] = true
L["trackQuestSorting"] = true
L["trackQuestSorting_DESC"] = "New tracking tasks will be listed at target tracking location \r\r default: top"
L["autoLootDefault"] = true
L["autoDismountFlying"] = true
L["removeChatDelay"] = true
L["screenshotQuality"] = true
L["screenshotQuality_DESC"] = "Screenshot Quality\r\rDefault: |cff00ff003|r"
L["showTutorials"] = true
L["WorldTextScale"] = true
L["WorldTextScale_DESC"] = "The scale of in-world damge numbers, xp gain, artifact gain, etc \r\r default: 1.0"
L["floatingCombatTextCombatDamageDirectionalScale"] = true
L["floatingCombatTextCombatDamageDirectionalScale_DESC"] = "Directional damage numbers movement scale (disable = no directional numbers\r\rDefault: |cff00ff001|r"

-- GMOTD
L["Display the Guild Message of the Day in an extra window, if updated."] = "Отображение сообщения дня гильдии в дополнительном окне, если оно было обновлено."

-- AFK
L["Jan"] = "Ян"
L["Feb"] = "Фев"
L["Mar"] = "Мар"
L["Apr"] = "Апр"
L["May"] = "Май"
L["Jun"] = "Июн"
L["Jul"] = "Июл"
L["Aug"] = "Авг"
L["Sep"] = "Сен"
L["Oct"] = "Окт"
L["Nov"] = "Ноя"
L["Dec"] = "Дек"

L["Sun"] = "Вс"
L["Mon"] = "Пн"
L["Tue"] = "Вт"
L["Wed"] = "Ср"
L["Thu"] = "Чт"
L["Fri"] = "Пт"
L["Sat"] = "Сб"

-- Nameplates
L["Castbar Shield"] = "Щит на кастбаре"
L["Show a shield icon on the castbar for non interruptible spells."] = "Показывать значок щита на панели заклинаний для непрерываемых заклинаний."
L["|cffFF0000NOTE:|r This will overwrite the ElvUI Nameplate options for Buff/Debuffs width/height. The CC-Buffs are hardcoded to a size of: 32 x 32"] = "|cffFF0000ПРИМЕЧАНИЕ:|r Это перезапишет параметры неймплейтов ElvUI для ширины/высоты баффов/дебаффов. CC-Buffs жестко запрограммированы на размер: 32 x 32"

-- Install
L["Welcome"] = "Добро пожаловать"
L["|cffff7d0aMerathilisUI|r Installation"] = "|cffff7d0aMerathilisUI|r Установка"
L["MerathilisUI Set"] = "Пар MerathilisUI"
L["MerathilisUI didn't find any supported addons for profile creation"] = "MerathilisUI не нашел поддерживаемых дополнений для создания профиля"
L["MerathilisUI successfully created and applied profile(s) for:"] = "MerathilisUI успешно создал и применил профили для:"
L["Chat Set"] = "Чат настроен"
L["ActionBars"] = "Панели команд"
L["ActionBars Set"] = "Пар панелей действий"
L["DataTexts Set"] = "Пар текстов данных"
L["Profile Set"] = "Пар профилей"
L["ElvUI AddOns settings applied."] = "Применены настройки аддонов ElvUI"
L["AddOnSkins is not enabled, aborting."] = "AddOnSkins не включен, прерывание."
L["AddOnSkins settings applied."] = "Применены настройки AddOnSkins."
L["BigWigs is not enabled, aborting."] = "BigWigs не включен, прерывание."
L["BigWigs Profile Created"] = "Профиль BigWigs создан"
L["Skada Profile Created"] = "Профиль Skada создан"
L["Skada is not enabled, aborting."] = "Skada не включена, прерывание."
L["UnitFrames Set"] = "Пар юнитфреймов"
L["Welcome to MerathilisUI |cff00c0faVersion|r %s, for ElvUI %s."] = "Добро пожаловать в MerathilisUI |cff00c0faVersion|r %s для ElvUI %s."
L["By pressing the Continue button, MerathilisUI will be applied in your current ElvUI installation.\r\r|cffff8000 TIP: It would be nice if you apply the changes in a new profile, just in case you don't like the result.|r"] = "Нажав кнопку 'Продолжить', MerathilisUI будет применен к вашей текущей установке ElvUI.\r\r|cffff8000 СОВЕТ: Было бы неплохо применить изменения в новом профиле, на случай, если вам не понравится результат.| р"
L["Buttons must be clicked twice"] = "Кнопки нужно нажимать дважды"
L["Importance: |cffff0000Very High|r"] = "Важность: |cffff0000Очень высокая|r"
L["The AddOn 'AddOnSkins' is not enabled. No settings have been changed."] = "Аддон 'AddOnSkins' не включен. Никакие настройки не изменены."
L["The Addon 'Big Wigs' is not enabled. Profile not created."] = "Аддон 'Big Wigs' не включен. Профиль не создан."
L["The AddOn 'ElvUI_BenikUI' is not enabled. No settings have been changed."] = "Аддон 'ElvUI_BenikUI' не включен. Никакие настройки не изменены."
L["The AddOn 'ElvUI_SLE' is not enabled. No settings have been changed."] = "Аддон 'ElvUI_SLE' не включен. Никакие настройки не изменены."
L["The Addon 'Skada' is not enabled. Profile not created."] = "Аддон 'Skada' не включен. Профиль не создан."
L["This part of the installation process sets up your chat fonts and colors."] = "Эта часть процесса установки настраивает шрифты и цвета чата."
L["This part of the installation changes the default ElvUI look."] = "Эта часть установки изменяет внешний вид ElvUI по умолчанию."
L["This part of the installation process will fill MerathilisUI datatexts.\r|cffff8000This doesn't touch ElvUI datatexts|r"] = "Эта часть процесса установки заполнит тексты данных MerathilisUI.\r|cffff8000Это не касается текстов данных ElvUI|r"
L["This part of the installation process will reposition your Actionbars and will enable backdrops"] = "Эта часть процесса установки изменит положение ваших панелей действий и включит фоны."
L["This part of the installation process will change your NamePlates."] = "Эта часть процесса установки изменит ваши именные таблички."
L["This part of the installation process will reposition your Unitframes."] = "Эта часть процесса установки изменит положение ваших юнитфреймов."
L["This part of the installation process will apply changes to ElvUI Plugins"] = "Эта часть процесса установки применит изменения к плагинам ElvUI."
L["This step changes a few World of Warcraft default options. These options are tailored to the needs of the author of %s and are not necessary for this edit to function."] = true
L["Please click the button below to apply the new layout."] = "Нажмите кнопку ниже, чтобы применить новый макет."
L["Please click the button below to setup your chat windows."] = "Нажмите кнопку ниже, чтобы настроить окна чата."
L["Please click the button below to setup your actionbars."] = "Пожалуйста, нажмите кнопку ниже, чтобы настроить панель действий."
L["Please click the button below to setup your datatexts."] = "Пожалуйста, нажмите кнопку ниже, чтобы настроить ваши тексты данных."
L["Please click the button below to setup your NamePlates."] = "Нажмите кнопку ниже, чтобы настроить неймплейтов."
L["Please click the button below to setup your Unitframes."] = "Нажмите кнопку ниже, чтобы настроить юнитфреймов."
L["Please click the button below to setup the ElvUI AddOns. For other Addon profiles please go in my Options - Skins/AddOns"] = "Пожалуйста, нажмите кнопку ниже, чтобы настроить дополнения ElvUI. Для других профилей аддонов перейдите в 'Мои параметры' - 'Скины/аддоны'"
L["DataTexts"] = "Инфо-тексты"
L["General Layout"] = "Общий макет"
L["Setup ActionBars"] = "Настройка панелей действий"
L["Setup NamePlates"] = "Настройка неймплейтов"
L["Setup UnitFrames"] = "Настройка юнитфреймов"
L["Setup Chat"] = "Настроить чат"
L["Setup Datatexts"] = "Настройка текстов данных"
L["Setup Addons"] = "Настройка аддонов"
L["ElvUI AddOns"] = "Аддоны ElvUI"
L["Finish"] = "Завершить"
L["Installed"] = "Установлены"

-- Staticpopup
L["MSG_MER_ELV_OUTDATED"] = "Your version of ElvUI is older than recommended to use with |cffff7d0aMerathilisUI|r. Your version is |cff00c0fa%.2f|r (recommended is |cff00c0fa%.2f|r). MerathilisUI isn't loaded. Please update your ElvUI."
L["You have got Location Plus and Shadow & Light both enabled at the same time. Select an addon to disable."] = "У вас одновременно включены Location Plus и Shadow & Light. Выберите надстройку для отключения."
L["MUI_INSTALL_SETTINGS_LAYOUT_SLE"] = [[Here you can choose the layout for S&L.]]
L["MUI_INSTALL_SETTINGS_LAYOUT_BW"] = [[Here you can choose the layout for BigWigs.]]
L["MUI_INSTALL_SETTINGS_LAYOUT_DBM"] = [[Here you can choose the layout for Deadly Boss Mods.]]
L["MUI_INSTALL_SETTINGS_LAYOUT_DETAILS"] = [[Here you can choose the layout for Details.]]
L["Name for the new profile"] = "Имя для нового профиля"
L["Are you sure you want to override the current profile?"] = "Вы уверены, что хотите переопределить текущий профиль?"

-- Skins
L["MER_SKINS_DESC"] = [[This section is designed to enhance skins existing in ElvUI.

Please note that some of these options will not be available if corresponding skin is |cff636363disabled|r in main ElvUI skins section.]]
L["MER_ADDONSKINS_DESC"] = [[This section is designed to modify some external addons appearance.

Please note that some of these options will be |cff636363disabled|r if the addon is not loaded in the addon control panel.]]
L["MerathilisUI Style"] = "Стиль MerathilisUI"
L["Creates decorative stripes and a gradient on some frames"] = "Создает декоративные полосы и градиент на некоторых фреймах"
L["Screen Shadow Overlay"] = "Наложение теней экрана"
L["Enables/Disables a shadow overlay to darken the screen."] = "Включает/отключает наложение теней для затемнения экрана."
L["Undress Button"] = "Кнопка раздевания"
L["Subpages"] = "Подстраницы"
L["Subpages are blocks of 10 items. This option set how many of subpages will be shown on a single page."] = "Подстраницы представляют собой блоки из 10 элементов. Эта опция устанавливает, сколько подстраниц будет отображаться на одной странице."
L["Enable/Disable"] = "Включить/Выключить"
L["decor."] = "декор."
L["MerathilisUI Button Style"] = "Стиль кнопки MerathilisUI"
L["Creates decorative stripes on Ingame Buttons (only active with MUI Style)"] = "Создает декоративные полосы на внутриигровых кнопках (активно только в MUI Style)"
L["Additional Backdrop"] = "Дополнительный фон"
L["Remove Border Effect"] = "Удалить эффект границ"
L["Animation Type"] = "Тип анимации"
L["The type of animation activated when a button is hovered."] = "Тип анимации, активируемый при наведении на кнопку."
L["Animation Duration"] = "Продолжительность анимации"
L["The duration of the animation in seconds."] = "Продолжительность анимации в секундах."
L["Backdrop Class Color"] = "Фон цветом класса"
L["Border Class Color"] = "Окантовки цвет класса"
L["Border Color"] = "Цвет окантовки"
L["Normal Class Color"] = "Нормальный цвет класса"
L["Selected Backdrop & Border"] = "Выбранный фон и рамка"
L["Selected Class Color"] = "Выбранный цвет класса"
L["Selected Color"] = "Выбранный цвет"
L["Tab"] = "Вкладка"
L["Tree Group Button"] = "Кнопка древовидной группы"
L["Shadow Color"] = "Цвет тени"
L["These skins will affect all widgets handled by ElvUI Skins."] = "Эти скины повлияют на все виджеты, обрабатываемые скинами ElvUI."
L["Texture"] = "Текстура"
L["Backdrop Color"] = "Цвет фона"
L["Check Box"] = "Флажок"
L["Slider"] = "Слайдер"
L["Backdrop Alpha"] = "Прозрачность фона"
L["Enable All"] = "Включить все"
L["Disable All"] = "Отключить все"
L["Spellbook"] = "Книга заклинаний"
L["Character Frame"] = "Рамка персонажа"
L["Gossip Frame"] = "Рамка для сплетен"
L["Quest Frames"] = "Рамки заданий"
L["TALENTS"] = "Таланты"
L["AUCTIONS"] = "Аукционы"
L["FRIENDS"] = "Друзья"
L["GUILD"] = "Гильдия"
L["Mail Frame"] = "Почтовый фрейм"
L["WORLD_MAP"] = "Карта мира"
L["Guild Control Frame"] = "Рамка управления гильдией"
L["MACROS"] = "Макросы"
L["GUILD_BANK"] = "Гильдийский банк"
L["FLIGHT_MAP"] = "Карта полета"
L["Help Frame"] = "Справочная рамка"
L["Loot Frames"] = "Рамки добычи"
L["CHANNELS"] = "Каналы"
L["Raid Frame"] = "Рейдовая рамка"
L["Craft"] = "Профессии"
L["Event Toast Manager"] = "Менеджер тостов событий"
L["Quest Choice"] = "Выбор заданий"
L["Orderhall"] = true
L["Contribution"] = "Вклад"
L["Calendar Frame"] = "Рамка календаря"
L["Merchant Frame"] = "Рамка торговца"
L["PvP Frames"] = "PvP-фреймы"
L["LF Guild Frame"] = true
L["TalkingHead"] = true
L["Minimap"] = "Миникарта"
L["Trainer Frame"] = "Рама обучения"
L["Socket Frame"] = "Рамка гнезда"
L["Item Upgrade"] = "Улучшение предмета"
L["Trade"] = "Торговля"
L["Allied Races"] = true
L["Archaeology Frame"] = "Рамка археологии"
L["Azerite Essence"] = true
L["Item Interaction"] = "Взаимодействие с предметами"
L["Anima Diversion"] = true
L["Soulbinds"] = "Связи душ"
L["Covenant Sanctum"] = "Святилище Ковенанта"
L["Covenant Preview"] = "Предварительный просмотр Ковенанта"
L["Covenant Renown"] = "Известность Ковенанта"
L["Player Choice"] = "Выбор игрока"
L["Chromie Time"] = true
L["LevelUp Display"] = "Отображение повышение уровня"
L["Guide Frame"] = true
L["Weekly Rewards"] = "Еженедельные награды"
L["Misc"] = "Разное"

-- Panels
L["Panels"] = "Панели"
L["Top Panel"] = "Верхняя панель"
L["Bottom Panel"] = "Нижняя панель"
L["Style Panels"] = "Стиль панелей"
L["Top Left Panel"] = "Верхняя левая панель"
L["Top Left Extra Panel"] = "Верхняя левая дополнительная панель"
L["Top Right Panel"] = "Верхняя правая панель"
L["Top Right Extra Panel"] = "Верхняя правая дополнительная панель"
L["Bottom Left Panel"] = "Нижняя левая панель"
L["Bottom Left Extra Panel"] = "Нижняя левая дополнительная панель"
L["Bottom Right Panel"] = "Нижняя правая панель"
L["Bottom Right Extra Panel"] = "Нижняя правая дополнительная панель"

-- Objective Tracker
L["Objective Tracker"] = "Отслеживание целей"
L["1. Customize the font of Objective Tracker."] = "1. Настройте шрифт Objective Tracker."
L["2. Add colorful progress text to the quest."] = "2. Добавьте цветной текст прохождения задания."
L["Progress"] = "Прогресс"
L["No Dash"] = "Без тире"
L["Colorful Progress"] = "Цветной прогресс"
L["Percentage"] = "Процент"
L["Add percentage text after quest text."] = "Добавляет процентный текст после текста задания."
L["Colorful Percentage"] = "Цветной процент"
L["Make the additional percentage text be colored."] = "Делает дополнительный процентный текст цветным."
L["Cosmetic Bar"] = "Панель косметики"
L["Border"] = "Граница"
L["Border Alpha"] = "Прозрачность окантовки"
L["Width Mode"] = "Режим ширины"
L["'Absolute' mode means the width of the bar is fixed."] = "Режим 'Абсолют' означает, что ширина полосы фиксирована."
L["'Dynamic' mode will also add the width of header text."] = "Режим 'Динамический' также добавит ширину текста заголовка."
L["'Absolute' mode means the height of the bar is fixed."] = "Режим 'Абсолют' означает, что высота полосы фиксирована."
L["'Dynamic' mode will also add the height of header text."] = "Режим 'Динамический' также добавит высоту текста заголовка."
L["Absolute"] = "Абсолют"
L["Dyanamic"] = "Динамический"
L["Color Mode"] = "Цветной режим"
L["Gradient"] = "Градиент"
L["Class Color"] = "Цвет класса"
L["Normal Color"] = "Обычный цвет"
L["Gradient Color 1"] = "Градиент цвет 1"
L["Gradient Color 2"] = "Градиент цвет 2"
L["Presets"] = "Пресеты"
L["Preset %d"] = "Пресет %d"
L["Here are some example presets, just try them!"] = "Вот несколько примеров пресетов, просто попробуйте их!"
L["Default"] = "По умолчанию"
L["Header"] = "Заголовок"
L["Short Header"] = "Короткий заголовок"
L["Use short name instead. e.g. Torghast, Tower of the Damned to Torghast."] = "Использывать короткое имя. Например: Торгаст, Торгаст, башня Проклятых."
L["Title Color"] = "Цвет заголовка"
L["Change the color of quest titles."] = "Изменить цвет названий заданий."
L["Use Class Color"] = "Использовать цвет класса"
L["Highlight Color"] = "Цвет выделения"
L["Title"] = "Название"
L["Bottom Right Offset X"] = "Нижнее правое смещение X"
L["Bottom Right Offset Y"] = "Нижнее правое смещение Y"
L["Top Left Offset X"] = "Верхнее левое смещение X"
L["Top Left Offset Y"] = "Верхнее левое смещение Y"
L["Transparent"] = "Прозрачный"
L["Style"] = "Стиль"
L["Height Mode"] = "Режим высоты"

-- Filter
L["Filter"] = "Фильтр"
L["Unblock the profanity filter."] = "Разблокируйте фильтр ненормативной лексики."
L["Profanity Filter"] = "Фильтр ненормативной лексики"
L["Enable this option will unblock the setting of profanity filter. [CN Server]"] = "Включите эту опцию, чтобы разблокировать настройку фильтра ненормативной лексики. [CN сервер]"

-- Friends List
L["Friends List"] = "Список друзей"
L["Add additional information to the friend frame."] = "Добавляет дополнительную информацию в список друзей."
L["Modify the texture of status and make name colorful."] = "Измените текстуру статуса и сделайте имя цветным."
L["Enhanced Texture"] = "Улучшенная текстура"
L["Game Icons"] = "Иконки игры"
L["Default"] = "По умолчанию"
L["Modern"] = "Современный"
L["Status Icon Pack"] = "Пакет значков статуса"
L["Diablo 3"] = true
L["Square"] = "Квадрат"
L["Faction Icon"] = "Значок фракции"
L["Use faction icon instead of WoW icon."] = "Использовать значок фракции вместо значка WoW."
L["Name"] = "Имя"
L["Level"] = "Уровень"
L["Hide Max Level"] = "Скрыть максимальный уровень"
L["Use Note As Name"] = "Использовать заметку вместо имени"
L["Replace the Real ID or the character name of friends with your notes."] = "Замените Real ID или имя персонажа друзей на свою заметку."
L["Use Game Color"] = "Использовать цвет игры"
L["Change the color of the name to the in-playing game style."] = "Измените цвет имени на стиль игры."
L["Use Class Color"] = "Использовать цвет класса"
L["Font Setting"] = "Настройка шрифта"

-- Talents
L["Talents"] = "Таланты"
L["This feature improves the Talent Window by:\n\n Adding an Extra Button to swap between specializations.\n Adding an Extra Button to use and track duration for Codices and Tomes."] = true

-- Profiles
L["MER_PROFILE_DESC"] = [[This section creates Profiles for some AddOns.

|cffff0000WARNING:|r It will overwrite/delete existing Profiles. If you don't want to apply my Profiles please don't press the Buttons below.]]

-- Addons
L["Skins/AddOns"] = "Скины/аддоны"
L["Profiles"] = "Профили"
L["BigWigs"] = true
L["MasterPlan"] = true
L["Shadow & Light"] = "|cff9482c9Shadow & Light|r"
L["This will create and apply profile for "] = "Это создаст и применит профиль для"

-- Changelog
L["Changelog"] = "Журнал изменений"

-- Compatibility
L["Compatibility Check"] = "Проверка совместимости"
L["Help you to enable/disable the modules for a better experience with other plugins."] = "Помогает вам включить / отключить модули для лучшего взаимодействия с другими плагинами."
L["There are many modules from different addons or ElvUI plugins, but several of them are almost the same functionality."] = "Есть много модулей из разных аддонов или плагинов ElvUI, но некоторые из них имеют практически одинаковую функциональность."
L["Have a good time with %s!"] = "Удачи с %s!"
L["Choose the module you would like to |cff00ff00use|r"] = "Выберите модуль, который хотите использовать |cff00ff00use|r"
L["If you find the %s module conflicts with another addon, alert me via Discord."] = "Если вы обнаружите, что модуль %s конфликтует с другим аддоном, сообщите мне через Discord."
L["You can disable/enable compatibility check via the option in the bottom of [MerathilisUI]-[Information]."] = "Вы можете отключить/включить проверку совместимости с помощью опции в нижней части [MerathilisUI]-[Информация]."
L["Complete"] = "Завершить"

-- Debug
L["Usage"] = "Использование"
L["Enable debug mode"] = "Включить режим отладки"
L["Disable all other addons except ElvUI Core, ElvUI %s and BugSack."] = "Отключите все остальные дополнения, кроме ElvUI Core, ElvUI %s и BugSack."
L["Disable debug mode"] = "Отключить режим отладки"
L["Reenable the addons that disabled by debug mode."] = "Повторно включите надстройки, отключенные режимом отладки."
L["Debug Enviroment"] = "Отладочная среда"
L["You can use |cff00ff00/muidebug off|r command to exit debug mode."] = "Вы можете использовать команду |cff00ff00/muidebug off|r для выхода из режима отладки."
L["After you stop debuging, %s will reenable the addons automatically."] = "После прекращения отладки %s автоматически активирует надстройки."
L["Before you submit a bug, please enable debug mode with %s and test it one more time."] = "Перед отправкой сообщения об ошибке включите режим отладки с помощью %s и протестируйте его еще раз."
L["Error"] = "Ошибка"
L["Warning"] = "Предупреждение"
