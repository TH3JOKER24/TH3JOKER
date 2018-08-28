
---------------Lock -------------------
function tqeed_photo(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if redis:get(boss..':tqeed_photo:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالصور بالتأكيد تم قفله \n✓'
else
redis:set(boss..':tqeed_photo:'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الصور بالتقييد  \n✓'
end
end

function fktqeed_photo(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(boss..':tqeed_photo:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالصور بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..':tqeed_photo:'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الصور بالتقييد \n✓'
end
end

---------------Lock -------------------
function tqeed_video(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if redis:get(boss..':tqeed_video:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالفيديو بالتأكيد تم قفله \n✓'
else
redis:set(boss..':tqeed_video:'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الفيديو بالتقييد  \n✓'
end
end

function fktqeed_video(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(boss..':tqeed_video:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالفيديو بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..':tqeed_video:'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الفيديو بالتقييد \n✓'
end
end

---------------Lock -------------------
function tqeed_gif(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if redis:get(boss..':tqeed_gif:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد الممتحركه بالتأكيد تم قفله \n✓'
else
redis:set(boss..':tqeed_gif:'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل المتحركه بالتقييد  \n✓'
end
end

function fktqeed_gif(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(boss..':tqeed_gif:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد المتحركه بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..':tqeed_gif:'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح المتحركه بالتقييد \n✓'
end
end

---------------Lock -------------------
function tqeed_fwd(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if redis:get(boss..':tqeed_fwd:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالتوجيه بالتأكيد تم قفله \n✓'
else
redis:set(boss..':tqeed_fwd:'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل التوجيه بالتقييد  \n✓'
end
end

function fktqeed_fwd(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(boss..':tqeed_fwd:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد التوجيه بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..':tqeed_fwd:'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح التوجيه بالتقييد \n✓'
end
end

---------------Lock -------------------
function tqeed_link(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if redis:get(boss..':tqeed_link:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالروابط بالتأكيد تم قفله \n✓'
else
redis:set(boss..':tqeed_link:'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الروابط بالتقييد  \n✓'
end
end

function fktqeed_link(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(boss..':tqeed_link:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالروابط بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..':tqeed_link:'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الروابط بالتقييد \n✓'
end
end

---------------Lock -------------------
function tqeed_photo(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if redis:get(boss..':tqeed_photo:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالصور بالتأكيد تم قفله \n✓'
else
redis:set(boss..':tqeed_photo:'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الصور بالتقييد  \n✓'
end
end

function fktqeed_photo(msg)
if not is_mod(msg) then return "🚸*¦ * هذا الامر يخص الادمنيه فقط  \n📛" end
if not redis:get(boss..':tqeed_photo:'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التقييد بالصور بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..':tqeed_photo:'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الصور بالتقييد \n✓'
end
end
---------------Lock twasel-------------------
function lock_twasel(msg)
if not we_sudo(msg) then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if redis:get(boss..'lock_twasel') then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التواصل بالتاكيد تم تعطيله \n✓'
else
redis:set(boss..'lock_twasel',true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تعطيل التواصل  \n✓'
end
end

function unlock_twasel(msg)
if not we_sudo(msg) then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if not redis:get(boss..'lock_twasel') then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التواصل بالتاكيد تم تفعيله \n✓'
else 
redis:del(boss..'lock_twasel')
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تفعيل التواصل \n✓'
end
end

---------------Lock bro-------------------
function lock_brod(msg)
if not we_sudo(msg) then return "📡*¦* هذا الامر يخص المطور فقط  🚶" end
if not redis:get(boss..'lock_brod') then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* اذاعه المطورين بالتاكيد تم تعطيله \n✓'
else
redis:del(boss..'lock_brod')
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تعطيل اذاعه المطورين  \n✓'
end
end
function unlock_brod(msg)
if not we_sudo(msg) then return "📡*¦* هذا الامر يخص المطور فقط  🚶" end
if redis:get(boss..'lock_brod') then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* اذاعه المطورين بالتاكيد تم تفعيله \n✓'
else 
redis:set(boss..'lock_brod',true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تفعيل اذاعه المطورين  \n✓'
end
end

---------------Lock replay-------------------
function lock_replay(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'replay'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الردود بالتاكيد تم تعطيله \n✓'
else
redis:del(boss..'replay'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تعطيل الردود  \n✓'
end
end

function unlock_replay(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'replay'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الردود بالتاكيد تم تفعيله \n✓'
else 
redis:set(boss..'replay'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تفعيل الردود  \n✓'
end
end

---------------Lock bot service-------------------
function lock_service(msg)
if not we_sudo(msg) then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if not redis:get(boss..'lock_service') then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم بالتاكيد تعطيل نظام البوت خدمي \n✓'
else
redis:del(boss..'lock_service')
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم  تعطيل نظام البوت خدمي \n✓'
end
end

function unlock_service(msg)
if not we_sudo(msg) then return "🚸*¦ * هذا الامر يخص المطور الاساسي فقط  \n📛" end
if redis:get(boss..'lock_service') then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم بالتأكيد تفعيل نظام البوت خدمي \n✓'
else 
redis:set(boss..'lock_service',true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم تفعيل نظام البوت خدمي \n✓\n🚸¦ اصبح البوت الان بامكان اي شخص\n🔚¦ ان يستخدم البوت للتفعيل'
end
end

---------------Lock Link-------------------
function lock_link(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_link'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الروابط بالتأكيد تم قفلها \n✓'
else
redis:set(boss..'lock_link'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الروابط \n✓'
end
end

function unlock_link(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_link'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الروابط بالتأكيد تم فتحها \n✓'
else 
redis:del(boss..'lock_link'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الروابط \n✓'
end
end

---------------Lock Tag-------------------
function lock_tag(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_tag'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التاك (#) بالتأكيد تم قفله \n✓'
else
redis:set(boss..'lock_tag'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل التاك (#) \n✓'
end
end

function unlock_tag(msg)

if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_tag'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التاك(#) بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..'lock_tag'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح التاك (#) \n✓'
end
end
---------------Lock UserName-------------------
function lock_username(msg) 

if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end

if redis:get(boss..'lock_username'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* المعرفات @ بالتأكيد تم قفله \n✓'
else
redis:set(boss..'lock_username'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل المعرفات @ \n✓'
end
end

function unlock_username(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_username'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* آلمـعرفآت بآلتآگيد تم فتحهآ @ \n✓'
else 
redis:del(boss..'lock_username'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح آلمـعرفآت @ \n✓'
end
end

---------------Lock Edit-------------------
function lock_edit(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_edit'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التعديل بالتأكيد تم قفله \n✓'
else
redis:set(boss..'lock_edit'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل التعديل \n✓'
end
end

function unlock_edit(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_edit'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التعديل بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..'lock_edit'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح التعديل \n✓'
end
end

---------------Lock spam-------------------
function lock_spam(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if   redis:get(boss..'lock_spam'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الكلايش بالتأكيد تم قفلها \n✓'
else
redis:set(boss..'lock_spam'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الكلايش \n✓'
end
end

function unlock_spam(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_spam'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الكلايش بالتأكيد تم فتحها \n✓'
else 
redis:del(boss..'lock_spam'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الكلايش \n✓'
end
end

---------------Lock Flood-------------------
function lock_flood(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_flood'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التكرار بالتأكيد تم قفله \n✓'
else
redis:set(boss..'lock_flood'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل التكرار \n✓'
end
end

function unlock_flood(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_flood'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* التكرار بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..'lock_flood'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح التكرار \n✓'
end
end

---------------Lock Bots-------------------
function lock_bots(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_bots'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* البوتات بالتأكيد تم قفلها \n✓'
else
redis:set(boss..'lock_bots'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل البوتات \n✓'
end
end

function unlock_bots(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_bots'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* البوتات بالتأكيد تم فتحها \n✓'
else 
redis:del(boss..'lock_bots'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح البوتات \n✓'
end
end

---------------Lock Join-------------------
function lock_join(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_join'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الاضافه بالتاكيد تم قفلها \n✓'
else
redis:set(boss..'lock_join'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الاضافه \n✓'
end
end

function unlock_join(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_join'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الاضافه بالتاكيد تم فتحها \n✓'
else 
redis:del(boss..'lock_join'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الاضافه \n✓'
end
end

---------------Lock Markdown-------------------
function lock_markdown(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_markdown'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الماركدوان بالتاكيد تم قفله \n✓'
else
redis:set(boss..'lock_markdown'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الماركدوان \n✓'
end
end

function unlock_markdown(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_markdown'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الماركدوان بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..'lock_markdown'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الماركدوان \n✓'
end
end

---------------Lock Webpage-------------------
function lock_webpage(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'lock_webpage'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الويب بالتأكيد تم قفله \n✓'
else
redis:set(boss..'lock_webpage'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الويب \n✓'
end
end

function unlock_webpage(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'lock_webpage'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الويب بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..'lock_webpage'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الويب \n✓'
end
end
---------------Mute Gif-------------------
function mute_gif(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'mute_gif'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* المتحركه بالتأكيد تم قفلها \n✓'
else
redis:set(boss..'mute_gif'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل المتحركه \n✓'
end
end

function unmute_gif(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'mute_gif'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* المتحركه بالتأكيد تم فتحها \n✓'
else 
redis:del(boss..'mute_gif'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح المتحركه \n✓'
end
end
---------------Mute Game-------------------
function mute_game(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'mute_game'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الالعاب بالتأكيد تم قفلها \n✓'
else
redis:set('mute_game'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الالعاب \n✓'
end
end

function unmute_game(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'mute_game'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الألعاب بالتأكيد تم فتحها \n✓'
else 
redis:del(boss..'mute_game'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الألعاب \n✓'
end
end
---------------Mute Inline-------------------
function mute_inline(msg) 
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if redis:get(boss..'mute_inline'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الانلاين بالتأكيد تم قفله \n✓'
else
redis:set(boss..'mute_inline'..msg.to.id,true)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم قفل الانلاين \n✓'
end
end

function unmute_inline(msg)
if not is_mod(msg) then return "📡*¦* هذا الامر يخص الادمنيه فقط  🚶" end
if not redis:get(boss..'mute_inline'..msg.to.id) then
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* الانلاين بالتأكيد تم فتحه \n✓'
else 
redis:del(boss..'mute_inline'..msg.to.id)
return '🙋🏼‍♂️*¦* أهلا عزيزي \n📡*¦* تم فتح الانلاين \n✓'
end
end
