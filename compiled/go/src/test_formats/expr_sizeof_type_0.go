// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ExprSizeofType0 struct {
	_io *kaitai.Stream
	_root *ExprSizeofType0
	_parent interface{}
	_f_sizeofBlock bool
	sizeofBlock int
}

func (this *ExprSizeofType0) Read(io *kaitai.Stream, parent interface{}, root *ExprSizeofType0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	return err
}
func (this *ExprSizeofType0) SizeofBlock() (v int, err error) {
	if (this._f_sizeofBlock) {
		return this.sizeofBlock, nil
	}
	this.sizeofBlock = int(7)
	this._f_sizeofBlock = true
	return this.sizeofBlock, nil
}
type ExprSizeofType0_Block struct {
	A uint8
	B uint32
	C []byte
	_io *kaitai.Stream
	_root *ExprSizeofType0
	_parent interface{}
}

func (this *ExprSizeofType0_Block) Read(io *kaitai.Stream, parent interface{}, root *ExprSizeofType0) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.A = tmp1
	tmp2, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.B = uint32(tmp2)
	tmp3, err := this._io.ReadBytes(int(2))
	if err != nil {
		return err
	}
	tmp3 = tmp3
	this.C = tmp3
	return err
}
