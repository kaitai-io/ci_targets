// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsDef struct {
	Buf string
	Trailer uint8
	Len uint32
	HasTrailer bool
	_io *kaitai.Stream
	_root *ParamsDef
	_parent interface{}
}
func NewParamsDef(len uint32, hasTrailer bool) *ParamsDef {
	return &ParamsDef{
		Len: len,
		HasTrailer: hasTrailer,
	}
}

func (this *ParamsDef) Read(io *kaitai.Stream, parent interface{}, root *ParamsDef) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(this.Len))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this.Buf = string(tmp1)
	if (this.HasTrailer) {
		tmp2, err := this._io.ReadU1()
		if err != nil {
			return err
		}
		this.Trailer = tmp2
	}
	return err
}
