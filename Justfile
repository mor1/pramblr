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
