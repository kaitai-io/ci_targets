// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type BytesPadTerm struct {
	StrPad []byte
	StrTerm []byte
	StrTermAndPad []byte
	StrTermInclude []byte
	_io *kaitai.Stream
	_root *BytesPadTerm
	_parent interface{}
}

func (this *BytesPadTerm) Read(io *kaitai.Stream, parent interface{}, root *BytesPadTerm) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrPad = tmp1
	tmp2, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrTerm = tmp2
	tmp3, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrTermAndPad = tmp3
	tmp4, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrTermInclude = tmp4
	return err
}
