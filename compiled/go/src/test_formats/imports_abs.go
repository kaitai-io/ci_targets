// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ImportsAbs struct {
	Len *VlqBase128Le
	Body []byte
	_io *kaitai.Stream
	_root *ImportsAbs
	_parent interface{}
}

func (this *ImportsAbs) Read(io *kaitai.Stream, parent interface{}, root *ImportsAbs) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := new(VlqBase128Le)
	err = tmp1.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Len = tmp1
	tmp2, err := this.Len.Value()
	if err != nil {
		return err
	}
	tmp3, err := this._io.ReadBytes(int(tmp2))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.Body = tmp3
	return err
}
