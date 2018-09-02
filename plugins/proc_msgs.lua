--[[

<< تم برمجه وكتابه السورس من قبل مطورين >>

<< @LO_RD \ @TH3LEDR >>

]]

local function pre_process(msg)

--====================== Reply Only Group =====================================

if redis:get(TH3JOKER..'addrd:'..msg.to.id..msg.from.id) and redis:get(TH3JOKER..'replay1'..msg.to.id..msg.from.id) then

local klma = redis:get(TH3JOKER..'replay1'..msg.to.id..msg.from.id)

if msg.photo_ then 

redis:hset(TH3JOKER..'replay_photo:group:'..msg.to.id,klma,photo_id)

redis:del(TH3JOKER..'addrd:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه صوره للرد بنجاح ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الصوره الاتيه .','html')

elseif msg.voice_ then

redis:hset(TH3JOKER..'replay_voice:group:'..msg.to.id,klma,voice_id)

redis:del(TH3JOKER..'addrd:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه بصمه صوت للرد بنجاح ✓\n🗂¦ يمكنك ارسال ('..klma..') لسماع البصمه الاتيه .','html')

elseif msg.animation_ then

redis:hset(TH3JOKER..'replay_animation:group:'..msg.to.id,klma,animation_id)

redis:del(TH3JOKER..'addrd:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه متحركه للرد بنجاح ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الصوره الاتيه .','html')

elseif msg.video_ then

redis:hset(TH3JOKER..'replay_video:group:'..msg.to.id,klma,video_id)

redis:del(TH3JOKER..'addrd:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه فيديو للرد بنجاح ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الفيديو الاتي .','html')

elseif msg.audio_ then

redis:hset(TH3JOKER..'replay_audio:group:'..msg.to.id,klma,audio_id)

redis:del(TH3JOKER..'addrd:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه للصوت للرد بنجاح ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الصوت الاتي .','html')

elseif msg.sticker_ then

redis:hset(TH3JOKER..'replay_sticker:group:'..msg.to.id,klma,sticker_id)

redis:del(TH3JOKER..'addrd:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه ملصق للرد بنجاح ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الملصق الاتي .','html')

end end

--====================== Reply All Groups =====================================

if redis:get(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id) and redis:get(TH3JOKER..'allreplay:'..msg.to.id..msg.from.id) then

local klma = redis:get(TH3JOKER..'allreplay:'..msg.to.id..msg.from.id)

if msg.photo_ then 

redis:hset(TH3JOKER..'replay_photo:group:',klma,photo_id)

redis:del(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه صوره للرد العام ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الصوره الاتيه .','html')

elseif msg.voice_ then

redis:hset(TH3JOKER..'replay_voice:group:',klma,voice_id)

redis:del(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه بصمه صوت للرد العام ✓\n🗂¦ يمكنك ارسال ('..klma..') لسماع البصمه الاتيه .','html')

elseif msg.animation_ then

redis:hset(TH3JOKER..'replay_animation:group:',klma,animation_id)

redis:del(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه متحركه للرد العام ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الصوره الاتيه .','html')

elseif msg.video_ then

redis:hset(TH3JOKER..'replay_video:group:',klma,video_id)

redis:del(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه فيديو للرد العام ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الفيديو الاتي .','html')

elseif msg.audio_ then

redis:hset(TH3JOKER..'replay_audio:group:',klma,audio_id)

redis:del(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه للصوت للرد العام ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الصوت الاتي .','html')

elseif msg.sticker_ then

redis:hset(TH3JOKER..'replay_sticker:group:',klma,sticker_id)

redis:del(TH3JOKER..'addrd_all:'..msg.to.id..msg.from.id)

return sendMsg(msg.to.id,msg.id_,'🗂¦ تم اضافه ملصق للرد العام ✓\n🗂¦ يمكنك ارسال ('..klma..') لاضهار الملصق الاتي .','html')

end end

if msg.from.username then usernamex = "@"..msg.from.username else usernamex = check_name(namecut(msg.from.first_name)) end

local function check_newmember(arg, data)

if data.id_ == our_id and redis:get(TH3JOKER..':WELCOME_BOT') then

return sendPhoto(arg.chat_id,arg.msg_id,0,1,nil,redis:get(TH3JOKER..':WELCOME_BOT'),[[💯¦ مـرحبآ آنآ بوت آسـمـي ]]..redis:get(TH3JOKER..'bot:name')..[[ ♠

🛠¦ آختصـآصـي حمـآيهہ‏‏ آلمـجمـوعآت

⛑¦ مـن آلسـبآم وآلتوجيهہ‏‏ وآلتگرآر وآلخ...

⚖️¦ مـعرف آلمـطـور : ]]..SUDO_USER:gsub([[\_]],'_')..[[ 🌿

👨🏽‍🔧]],dl_cb,nil)

end

if data.username_ then user_name = "@"..data.username_ else user_name = "---" end

------------------------------------------------------

if redis:get(TH3JOKER..'group:add'..arg.chat_id) then

if data.type_.ID == "UserTypeBot" then -- حصانه التحقق من البوتات المضافه

if not is_owner1(arg.chat_id,arg.user_id) and redis:get(TH3JOKER..'lock_bots_by_kick'..msg.to.id) then --- طرد البوت مع الي ضافه

kick_user(data.id_, arg.chat_id)

kick_user(arg.user_id, arg.chat_id)

sendMsg(arg.chat_id,0,'👤*¦* آلعضـو : ['..usernamex..']\n🔖*¦* آلبوت : ['..user_name..']\n‼️¦ مـمـنوع آضـآفهہ آلبوتآت ✋🏿\n🚯¦ تم طـرد آلبوت مـع آلعضـو \n✘',"md") 

elseif not is_owner1(arg.chat_id,arg.user_id) and redis:get(TH3JOKER..'lock_bots'..msg.to.id) then

kick_user(data.id_, arg.chat_id)

if redis:get(TH3JOKER..'lock_woring'..msg.to.id) then

return sendMsg(arg.chat_id,0,'🔖*¦* آلعضـو » ['..usernamex..']\n🔖*¦* الايدي »` '..arg.user_id..'`\n🔖*¦* البوت » ['..user_name..']\n‼️¦ مـمـنوع آضـآفه آلبوتآت ✋🏿\n🚯¦ تم طـرد آلبوت\n✘',"md") 

end end else

if redis:get(TH3JOKER..'welcome:get'..arg.chat_id) then

welcome = (redis:get(TH3JOKER..'welcome:msg'..arg.chat_id) or "🔖*¦* مرحباً عزيزي\n🔖*¦* نورت المجموعة \n💂🏼‍♀️")

rules = (redis:get(TH3JOKER..'rulse:msg'..arg.chat_id) or "🔖*¦* مرحبأ عزيري 👋🏻 القوانين كلاتي 👇🏻\n🔖*¦* ممنوع نشر الروابط \n🔖*¦* ممنوع التكلم او نشر صور اباحيه \n🔖*¦* ممنوع اعاده توجيه \n🔖*¦* ممنوع التكلم بلطائفه \n🔖*¦* الرجاء احترام المدراء والادمنيه 😅\n")

local welcome = welcome:gsub("{rules}", rules)

local welcome = welcome:gsub("{name}", '['..data.first_name_..' '..(data.last_name_ or '')..']')

local welcome = welcome:gsub("{username}", "["..user_name.."]")

local welcome = welcome:gsub("{gpname}", arg.gp_name)

sendMsg(arg.chat_id,arg.msg_id,welcome,"md")

end end 

-------------------------

if is_banned(data.id_, arg.chat_id) then

sendMsg(arg.chat_id,arg.msg_id,'🔖*¦* العضو ⇐ ['..user_name..'] \n🔖*¦* الايدي* ('..data.id_..')*\n🔖*¦* محضور سابقا وتم طرده ✓',"md")

kick_user(data.id_, arg.chat_id)

end

if is_gbanned(data.id_) then

sendMsg(arg.chat_id,arg.msg_id,'🔖*¦* العضو ⇐ ['..user_name..'] \n🔖*¦* الايدي* ('..data.id_..')*\n🔖*¦* محظور عام تم طرده ✓',"md")

kick_user(data.id_,arg.chat_id)

end end end

if msg.to.type == "channel" and redis:get(TH3JOKER..'group:add'..msg.to.id) then

if msg.content_.ID == "MessageChatChangePhoto" then

return sendMsg(msg.to.id,msg.id_," قام ["..usernamex.."] بتغير صوره المجموعه ✓\n","md")

end

if msg.content_.ID == "MessageChatChangeTitle" then

tdcli_function({ID="GetChat",chat_id_=msg.to.id},function(arg,data)

redis:set(TH3JOKER..'group:name'..msg.to.id,data.title_)

return sendMsg(msg.to.id,msg.id_,"📭¦ تم تغير اسم المجموعه ✋🏿\n🗯¦ الان اسمه `"..data.title_.."` \n✓","md") end,nil)

end

if msg.adduser then

tdcli_function ({ID = "GetUser",user_id_ = msg.adduser},check_newmember,{chat_id=msg.to.id,msg_id=msg.id_,user_id=msg.from.id,gp_name=redis:get(TH3JOKER..'group:name'..msg.to.id)})

end

if msg.joinuser then

tdcli_function ({ID = "GetUser",user_id_ = msg.joinuser},check_newmember,{chat_id=msg.to.id,msg_id=msg.id_,user_id=msg.from.id,gp_name=redis:get(TH3JOKER..'group:name'..msg.to.id)}) end

if (msg.adduser or msg.joinuser or msg.deluser) and redis:get(TH3JOKER..'mute_tgservice'..msg.to.id) then del_msg(msg.to.id,tonumber(msg.id_)) end

end

if msg.photo_ then

if redis:get(TH3JOKER..'photo:group'..msg.to.id..msg.from.id) then

redis:del(TH3JOKER..'photo:group'..msg.from.id)

tdcli_function({ID="ChangeChatPhoto",chat_id_=msg.to.id,photo_=getInputFile(photo_id)},dl_cb,nil)

end

if redis:get(TH3JOKER..'welcom_ph:witting'..msg.from.id) then

redis:del(TH3JOKER..'welcom_ph:witting'..msg.from.id)

redis:set(TH3JOKER..':WELCOME_BOT',photo_id)

return sendMsg(msg.to.id,msg.id_,'🚸 ¦ تم تغيير صـورهہ‏‏ آلترحيب للبوت 🌿\n✓','md')

end end

if msg.forward_info_ and redis:get(TH3JOKER..'fwd:'..msg.from.id) then

redis:del(TH3JOKER..'fwd:'..msg.from.id)

local pv = redis:smembers(TH3JOKER..'users')

local groups = redis:smembers(TH3JOKER..'group:ids')

for i = 1, #pv do forwardMessages(pv[i],msg.to.id,{[0]=msg.id_},0) end

for i = 1, #groups do forwardMessages(groups[i],msg.to.id,{[0]=msg.id_},0) end

return sendMsg(msg.to.id,msg.id_,'📜*¦* تم اذاعه التوجيه بنجاح 🏌🏻\n🗣*¦* للمـجمـوعآت » *'..#groups..'* \n👥*¦* للخآص » '..#pv..'\n✓')			

end

if msg.to.type == "pv" and not is_sudo(msg) then

local msg_pv = tonumber(redis:get(TH3JOKER..'user:'..msg.from.id..':msgs') or 0)

if msg_pv > 5 then

redis:setex(TH3JOKER..':mute_pv:'..msg.from.id,3600,true) 

return sendMsg(msg.to.id,0,'*📛¦* تم حظرك من البوت بسبب التكرار \n🛠','md') 

