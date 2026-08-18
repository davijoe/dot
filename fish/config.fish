if status is-interactive
    # Commands to run in interactive sessions can go here
    #
    # Core system bins first
    fish_add_path -g /usr/local/sbin /usr/local/bin /usr/sbin /usr/bin /sbin /bin

    # Your personal bins
    fish_add_path -g /home/dan/go/bin
    fish_add_path -g /home/dan/.local/bin
end
