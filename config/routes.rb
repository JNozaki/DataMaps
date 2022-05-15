Rails.application.routes.draw do
  root 'home#index'
  match '/' => 'home#index', via: :all
  match '/about' => 'home#about', via: :all
  match '/contact' => 'home#contact', via: :all


  match '/bre' => 'home#bre', via: :all
  match '/ham' => 'home#ham', via: :all
  match '/ber' => 'home#ber', via: :all

  match '/nor' => 'home#nor', via: :all
  match '/cologne' => 'home#cologne', via: :all

  match '/bad' => 'home#bad', via: :all
  match '/stuttgart' => 'home#stuttgart', via: :all

  match '/bav' => 'home#bav', via: :all
  match '/munich' => 'home#munich', via: :all

  match '/bra' => 'home#bra', via: :all
  match '/potsdam' => 'home#potsdam', via: :all

  match '/hes' => 'home#hes', via: :all
  match '/frankfurt' => 'home#frankfurt', via: :all

  match '/low' => 'home#low', via: :all
  match '/hanover' => 'home#hanover', via: :all

  match '/mec' => 'home#mec', via: :all
  match '/rostock' => 'home#rostock', via: :all

  match '/rhi' => 'home#rhi', via: :all
  match '/mainz' => 'home#mainz', via: :all

  match '/saa' => 'home#saa', via: :all
  match '/saarbruecken' => 'home#saarbruecken', via: :all

  match '/sax' => 'home#sax', via: :all
  match '/dresden' => 'home#dresden', via: :all

  match '/saxa' => 'home#saxa', via: :all
  match '/magdeburg' => 'home#magdeburg', via: :all

  match '/sch' => 'home#sch', via: :all
  match '/kiel' => 'home#kiel', via: :all

  match '/thu' => 'home#thu', via: :all
  match '/erfurt' => 'home#erfurt', via: :all


  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
