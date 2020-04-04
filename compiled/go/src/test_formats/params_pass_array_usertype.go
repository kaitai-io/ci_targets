// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type ParamsPassArrayUsertype struct {
	Blocks []*ParamsPassArrayUsertype_Block
	PassBlocks *ParamsPassArrayUsertype_ParamType
	_io *kaitai.Stream
	_root *ParamsPassArrayUsertype
	_parent interface{}
}

func (this *ParamsPassArrayUsertype) Read(io *kaitai.Stream, parent interface{}, root *ParamsPassArrayUsertype) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	this.Blocks = make([]*ParamsPassArrayUsertype_Block, 2)
	for i := range this.Blocks {
		tmp1 := new(ParamsPassArrayUsertype_Block)
		err = tmp1.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Blocks[i] = tmp1
	}
	tmp2 := new(ParamsPassArrayUsertype_ParamType)
	err = tmp2.Read(this._io, this, this._root)
	if err != nil {
		return err
	}
	this.PassBlocks = tmp2
	return err
}
type ParamsPassArrayUsertype_Block struct {
	Foo uint8
	_io *kaitai.Stream
	_root *ParamsPassArrayUsertype
	_parent *ParamsPassArrayUsertype
}

func (this *ParamsPassArrayUsertype_Block) Read(io *kaitai.Stream, parent *ParamsPassArrayUsertype, root *ParamsPassArrayUsertype) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp3, err := this._io.ReadU1()
	if err != nil {
		return err
	}
	this.Foo = tmp3
	return err
}
type ParamsPassArrayUsertype_ParamType struct {
	One []byte
	Two []byte
	_io *kaitai.Stream
	_root *ParamsPassArrayUsertype
	_parent *ParamsPassArrayUsertype
}

func (this *ParamsPassArrayUsertype_ParamType) Read(io *kaitai.Stream, parent *ParamsPassArrayUsertype, root *ParamsPassArrayUsertype) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(this.Bar[0].Foo))
	if err != nil {
		return err
	}
	tmp4 = tmp4
	this.One = tmp4
	tmp5, err := this._io.ReadBytes(int(this.Bar[1].Foo))
	if err != nil {
		return err
	}
	tmp5 = tmp5
	this.Two = tmp5
	return err
}
