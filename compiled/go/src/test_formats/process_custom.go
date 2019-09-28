// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ProcessCustom struct {
	Buf1 []byte
	Buf2 []byte
	Key uint8
	Buf3 []byte
	_io *kaitai.Stream
	_root *ProcessCustom
	_parent interface{}
	_raw_Buf1 []byte
	_raw_Buf2 []byte
	_raw_Buf3 []byte
}

func (this *ProcessCustom) Read(io *kaitai.Stream, parent interface{}, root *ProcessCustom) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp1 = tmp1
	this._raw_Buf1 = tmp1
	this.Buf1 = this._raw_Buf1
	tmp2, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp2 = tmp2
	this._raw_Buf2 = tmp2
	this.Buf2 = this._raw_Buf2
	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Key = tmp3
	tmp4, err := this._io.ReadBytes(int(5))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this._raw_Buf3 = tmp4
	this.Buf3 = this._raw_Buf3
	return err
}
