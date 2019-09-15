// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type EofExceptionU4 struct {
	Prebuf []byte
	FailInt uint32
	_io *kaitai.Stream
	_root *EofExceptionU4
	_parent interface{}
}

func (this *EofExceptionU4) Read(io *kaitai.Stream, parent interface{}, root *EofExceptionU4) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(9))
	if err != nil {
		return err
	}
	this.Prebuf = tmp1
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.FailInt = uint32(tmp2)
	return err
}
