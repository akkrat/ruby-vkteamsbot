
Event
---

File: `lib/icqbot/event.rb`

---
Класс для представления событий.

## Конструктор
```ruby
def initialize event_h
```
Принимает hash event из ICQ Bot API.

## Аттрибуты
```ruby
attr_reader :type, :text, :msg_id, :chat_id, :from,
            :data, :query_id
```
```ruby
event.type    # Тип события.
event.text    # текст приходящего события(обычно текст сообщения от юзера).
event.msg_id  # ID пришедшего сообщения.
event.chat_id # ID чата, в который пришло сообщения.
event.from    # Hash | Информация от кого пришло сообщение. 
# -- Аттрибуты для callback event --
event.data
event.query_id 
```


## Типы событий
```ruby
module TypeEvent
    NEW_MSG     = 'newMessage'
    EDITED_MSG  = 'editedMessage'
    DELETED_MSG = 'deletedMessage'
    CALLBACK    = 'callbackQuery'
    ... # in working
```