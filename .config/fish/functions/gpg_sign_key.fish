function gpg_sign_key --description 'Receive, verify, sign and upload a key using its ID'
    set key_id $argv[1]
    gpg --recv-keys $key_id
    gpg --fingerprint $key_id
    echo "Do you want to sign key $key_id ? [j/N]"
    read decision
    if [ $decision != "j" ]
        exit 1
    end
    gpg --sign-key $key_id
    gpg --send-key $key_id
end
