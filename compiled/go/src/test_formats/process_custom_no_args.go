// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ProcessCustomNoArgs struct {
	Buf []byte
	_io *kaitai.Stream
	_root *ProcessCustomNoArgs
	_parent interface{}
	_raw_Buf []byte
}

func (this *ProcessCustomNoArgs) Read(io *kaitai.Stream, parent interface{}, root *ProcessCustomNoArgs) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this._raw_Buf = tmp1
	this.Buf = this._raw_Buf
	return err
}
