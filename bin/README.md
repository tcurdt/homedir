# tcurdt's scripts

## backup-twitter

Simple script to backup your tweets.

## html-minimize

Goes trough png, js, css and html files minimized them and also creates a gzip'ed version.

## jardiff

Shows differences between jars

## mvn-release

After wasting way too much time with the maven release plugin I came up with this little script that does things the way I want it. If you use maven, git(hub) and OSX you might want to have a look whether this fits your bill as well. Features are:

- does NOT do any automatic changes and commits
- no passwords stored in any config files (integration with Keychain)
- GPG signing of the artifacts
- integration with the GPG agent (for caching the key phrase)
- upload of the project bundle directly to the repository manager (nexus at oss.sonatype.org)
- can automatically update javadocs and xrefs on github pages

This is a tailored script. No support for other SCMs is planned, multi-module support might come at some stage. Improvements and suggestion are always welcome though.

## split-file

The "split-file" command is great if you want to split files into pieces of a certain size. Not so great if you want to split files into equal size though. "split-file" works just slightly different. It does the partitioning for you and you can efficiently grab the part of the file you need.

    split-file 1/3 file > file.1
    split-file 2/3 file > file.2
    split-file 3/3 file > file.3

This gets more interesting if you want to split text files on their line boundaries. Instead of counting the lines and passing the fraction to "split" you can just add the option "-l" with "split-file".

    split-file -l 1/3 file.txt > file.txt.1
    split-file -l 2/3 file.txt > file.txt.2
    split-file -l 3/3 file.txt > file.txt.3

While "split-file" still splits on file size it honors the line boundaries. This means the exact number of lines still may be different per file but you end up with similar sized file.

## lines-sample

Ever wanted to x random lines out of 10GB text file? Most of the usual approaches fail short when files get too big. This script is efficient also on large files.

## sparkle-generate-keys

Generate the keys for sparkle.

## sparkle-sign

Sign a release.

## sparkle-verify

Download the last release and verify it.

## split-dir

Split files across directories.

## sync-media

Sync local disk with server.

## watch-apple-store

The Apple store is down and you have better things to do than hitting reload and waiting. This script watches the website for you and sends you a growl notification once the store is back.

## xcode-release

My script to release Mac projects
