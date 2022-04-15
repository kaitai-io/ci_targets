// Code generated by kaitai-struct-compiler from a .ksy source file. DO NOT EDIT.

package test_formats

import "github.com/kaitai-io/kaitai_struct_go_runtime/kaitai"

type IndexSizes struct {
	Qty uint32
	Sizes []uint32
	Bufs []string
	_io *kaitai.Stream
	_root *IndexSizes
	_parent interface{}
}
func NewIndexSizes() *IndexSizes {
	return &IndexSizes{
	}
}

func (this *IndexSizes) Read(io *kaitai.Stream, parent interface{}, root *IndexSizes) (err error) {
	this._io = io
	this._parent = parent
	this._root = root

	tmp1, err := this._io.ReadU4le()
	if err != nil {
		return err
	}
	this.Qty = uint32(tmp1)
	for i := 0; i < int(this.Qty); i++ {
		_ = i
		tmp2, err := this._io.ReadU4le()
		if err != nil {
			return err
		}
		this.Sizes = append(this.Sizes, tmp2)
	}
	for i := 0; i < int(this.Qty); i++ {
		_ = i
		tmp3, err := this._io.ReadBytes(int(this.Sizes[i]))
		if err != nil {
			return err
		}
		tmp3 = tmp3
		this.Bufs = append(this.Bufs, string(tmp3))
	}
	return err
}
