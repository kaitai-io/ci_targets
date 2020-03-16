// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type DebugSwitchUser struct {
	Code uint8
	Data interface{}
	_io *kaitai.Stream
	_root *DebugSwitchUser
	_parent interface{}
}

func (this *DebugSwitchUser) Read(io *kaitai.Stream, parent interface{}, root *DebugSwitchUser) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp1
	switch (this.Code) {
	case 1:
		tmp2 := new(DebugSwitchUser_One)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Data = tmp2
	case 2:
		tmp3 := new(DebugSwitchUser_Two)
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Data = tmp3
	}
	return err
}
type DebugSwitchUser_One struct {
	Val int16
	_io *kaitai.Stream
	_root *DebugSwitchUser
	_parent *DebugSwitchUser
}

func (this *DebugSwitchUser_One) Read(io *kaitai.Stream, parent *DebugSwitchUser, root *DebugSwitchUser) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadS2le()
	if err != nil {
		return err
	}
	this.Val = int16(tmp4)
	return err
}
type DebugSwitchUser_Two struct {
	Val uint16
	_io *kaitai.Stream
	_root *DebugSwitchUser
	_parent *DebugSwitchUser
}

func (this *DebugSwitchUser_Two) Read(io *kaitai.Stream, parent *DebugSwitchUser, root *DebugSwitchUser) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU2le()
	if err != nil {
		return err
	}
	this.Val = uint16(tmp5)
	return err
}
