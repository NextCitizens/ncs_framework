NCS:registerNetEvent("jobBindInteract")
NCS:onReady(function()
    API_KeyBind:bind("job", "f6", _Literals.BIND_JOB_KEY, function()
        API_Callback:triggerServer("getPlayerJob", function(job, jobGrade)
            NCS:triggerEvent("jobBindInteract", job, jobGrade)
        end)
    end)
end)