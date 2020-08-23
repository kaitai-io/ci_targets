// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type OpaqueWithParam struct {
	One *ParamsDef
	_io *kaitai.Stream
	_root *OpaqueWithParam
	_parent interface{}
}
func NewOpaqueWithParam() *OpaqueWithParam {
	return &OpaqueWithParam{
	}
}

func (this *OpaqueWithParam) Read(io *kaitai.Stream, parent interface{}, root *OpaqueWithParam) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1 := NewParamsDef(5, true)
	err = tmp1.Read(this._io, this, nil)
	if err != nil {
		return err
	}
	this.One = tmp1
	return err
}
