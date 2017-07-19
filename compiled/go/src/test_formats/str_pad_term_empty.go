// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type StrPadTermEmpty struct {
	StrPad string
	StrTerm string
	StrTermAndPad string
	StrTermInclude string
	_io *kaitai.Stream
	_root *StrPadTermEmpty
	_parent interface{}
}

func (this *StrPadTermEmpty) Read(io *kaitai.Stream, parent interface{}, root *StrPadTermEmpty) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrPad = string(tmp1)
	tmp2, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrTerm = string(tmp2)
	tmp3, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrTermAndPad = string(tmp3)
	tmp4, err := this._io.ReadBytes(int(20))
	if err != nil {
		return err
	}
	this.StrTermInclude = string(tmp4)
	return err
}
