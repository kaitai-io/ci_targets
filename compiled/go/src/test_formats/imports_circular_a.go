// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"
type ImportsCircularA struct {
	Code uint8
	Two *ImportsCircularB
	_io *kaitai.Stream
	_root *ImportsCircularA
	_parent interface{}
}

func (this *ImportsCircularA) Read(io *kaitai.Stream, parent interface{}, root *ImportsCircularA) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Code = tmp1
	tmp2 := new(ImportsCircularB)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.Two = tmp2
	return err
}
