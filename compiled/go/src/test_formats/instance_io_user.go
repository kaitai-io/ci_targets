// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import (
	"github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
	"bytes"
	"io"
)

type InstanceIoUser struct {
	QtyEntries uint32
	Entries []*InstanceIoUser_Entry
	Strings *InstanceIoUser_StringsObj
	_io *kaitai.Stream
	_root *InstanceIoUser
	_parent interface{}
	_raw_Strings []byte
}

func (this *InstanceIoUser) Read(io *kaitai.Stream, parent interface{}, root *InstanceIoUser) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.QtyEntries = tmp1
	this.Entries = make([]*InstanceIoUser_Entry, this.QtyEntries)
	for i := range this.Entries {
		tmp2 := new(InstanceIoUser_Entry)
		err = tmp2.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Entries[i] = tmp2
	}
	tmp3, err := this._io.ReadBytesFull()
	if err != nil {
		return err
	}
	this._raw_Strings = tmp3
	_io__raw_Strings := kaitai.NewStream(bytes.NewReader(this._raw_Strings))
	tmp4 := new(InstanceIoUser_StringsObj)
	err = tmp4.Read(_io__raw_Strings, this, this._root)
	if err != nil {
		return err
	}
	this.Strings = tmp4
	return err
}
type InstanceIoUser_Entry struct {
	NameOfs uint32
	Value uint32
	_io *kaitai.Stream
	_root *InstanceIoUser
	_parent *InstanceIoUser
	_f_name bool
	name string
}

func (this *InstanceIoUser_Entry) Read(io *kaitai.Stream, parent *InstanceIoUser, root *InstanceIoUser) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp5, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.NameOfs = tmp5
	tmp6, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Value = tmp6
	return err
}
func (this *InstanceIoUser_Entry) Name() (v string, err error) {
	if (this._f_name) {
		return this.name, nil
	}
	kaitai.Stream io = this._root.Strings._io;
	_pos, err := io.Pos()
	if err != nil {
		return "", err
	}
	_, err = io.Seek(int64(this.NameOfs), io.SeekStart)
	if err != nil {
		return "", err
	}
	tmp7, err := io.ReadBytesTerm(0, false, true, true)
	if err != nil {
		return "", err
	}
	this.name = string(tmp7)
	_, err = io.Seek(_pos, io.SeekStart)
	if err != nil {
		return "", err
	}
	this._f_name = true
	return this.name, nil
}
type InstanceIoUser_StringsObj struct {
	Str []string
	_io *kaitai.Stream
	_root *InstanceIoUser
	_parent *InstanceIoUser
}

func (this *InstanceIoUser_StringsObj) Read(io *kaitai.Stream, parent *InstanceIoUser, root *InstanceIoUser) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	for {
		tmp8, err := this._io.EOF()
		if err != nil {
			return err
		}
		if tmp8 {
			break
		}
		tmp9, err := this._io.ReadBytesTerm(0, false, true, true)
		if err != nil {
			return err
		}
		this.Str = append(this.Str, string(tmp9))
	}
	return err
}
