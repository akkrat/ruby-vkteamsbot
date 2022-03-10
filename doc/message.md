Message
---

File: `lib/vkteamsbot/message.rb`

---

## Конструктор
```ruby
def initialize text, *keyboard
```
1. `text` - текст сообщения(String).
2. `*keyboard` - массив объектов [Button](./button.md).

## Аттрибуты 
```ruby
attr_reader :text, :keyboard
msg.text     # текст сообщения(String)
msg.keyboard # массив объектов Button
```

## Добавить кнопку
```ruby
def << btn
```
```ruby
alias_method :append, :<<
```
1. `btn` - объект типа [Button](./button.md)