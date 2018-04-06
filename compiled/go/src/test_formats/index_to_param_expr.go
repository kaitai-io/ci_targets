// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type IndexToParamExpr struct {
	Qty uint32
	Sizes []uint32
	Blocks []*IndexToParamExpr_Block
	_io *kaitai.Stream
	_root *IndexToParamExpr
	_parent interface{}
}

func (this *IndexToParamExpr) Read(io *kaitai.Stream, parent interface{}, root *IndexToParamExpr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = tmp1
	this.Sizes = make([]uint32, this.Qty)
	for i := range this.Sizes {
		tmp2, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Sizes[i] = tmp2
	}
	this.Blocks = make([]*IndexToParamExpr_Block, this.Qty)
	for i := range this.Blocks {
		tmp3 := new(IndexToParamExpr_Block)
		err = tmp3.Read(this._io, this, this._root)
		if err != nil {
			return err
		}
		this.Blocks[i] = tmp3
	}
	return err
}
type IndexToParamExpr_Block struct {
	Buf string
	_io *kaitai.Stream
	_root *IndexToParamExpr
	_parent *IndexToParamExpr
}

func (this *IndexToParamExpr_Block) Read(io *kaitai.Stream, parent *IndexToParamExpr, root *IndexToParamExpr) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp4, err := this._io.ReadBytes(int(this._root.Sizes[this.Idx]))
	if err != nil {
		return err
	}
	this.Buf = string(tmp4)
	return err
}
