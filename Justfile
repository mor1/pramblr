# SPDX-FileCopyrightText: (C) Richard Mortier <mort@cantab.net>
#
# SPDX-License-Identifier: BSD-3-Clause

_default:
    @just --list

PWD := env("PWD")
TARGET := "pramblr"

# install target
install:
    ln -sf {{PWD}}/{{TARGET}} ~/.local/bin/
    ln -sf {{PWD}}/.env ~/.local/bin/.env-{{TARGET}}

# uninstall target
uninstall:
    rm ~/.local/bin/{{TARGET}}
    rm ~/.local/bin/.env-{{TARGET}}
