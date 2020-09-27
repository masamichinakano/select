class Style < ActiveHash::Base
  self.data = [
    {id: 0, name: "選択してください"},
    {id: 1, name: "右投げ　右打ち"},
    {id: 2, name: "右投げ　左打ち"},
    {id: 3, name: "左投げ　左打ち"},
    {id: 4, name: "左投げ　右打ち"}
  ]
  
end
