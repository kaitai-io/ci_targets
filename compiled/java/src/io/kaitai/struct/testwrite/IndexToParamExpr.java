// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import java.util.List;

public class IndexToParamExpr extends KaitaiStruct.ReadWrite {
    public static IndexToParamExpr fromFile(String fileName) throws IOException {
        return new IndexToParamExpr(new ByteBufferKaitaiStream(fileName));
    }
    public IndexToParamExpr() {
        this(null, null, null);
    }

    public IndexToParamExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexToParamExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IndexToParamExpr(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IndexToParamExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.qty = this._io.readU4le();
        this.sizes = new ArrayList<Long>();
        for (int i = 0; i < qty(); i++) {
            this.sizes.add(this._io.readU4le());
        }
        this.blocks = new ArrayList<Block>();
        for (int i = 0; i < qty(); i++) {
            Block _t_blocks = new Block(this._io, this, _root, i);
            try {
                _t_blocks._read();
            } finally {
                this.blocks.add(_t_blocks);
            }
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        this._io.writeU4le(this.qty);
        for (int i = 0; i < this.sizes.size(); i++) {
            this._io.writeU4le(this.sizes.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.sizes.size() != qty())
            throw new ConsistencyError("sizes", this.sizes.size(), qty());
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        if (this.blocks.size() != qty())
            throw new ConsistencyError("blocks", this.blocks.size(), qty());
        for (int i = 0; i < this.blocks.size(); i++) {
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks", this.blocks.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks", this.blocks.get(((Number) (i)).intValue())._parent(), this);
            if (this.blocks.get(((Number) (i)).intValue()).idx() != i)
                throw new ConsistencyError("blocks", this.blocks.get(((Number) (i)).intValue()).idx(), i);
        }
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public Block(int idx) {
            this(null, null, null, idx);
        }

        public Block(KaitaiStream _io, int idx) {
            this(_io, null, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamExpr _parent, int idx) {
            this(_io, _parent, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamExpr _parent, IndexToParamExpr _root, int idx) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.idx = idx;
        }
        public void _read() {
            this.buf = new String(this._io.readBytes(_root().sizes().get(((Number) (idx())).intValue())), StandardCharsets.US_ASCII);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBytes((this.buf).getBytes(Charset.forName("ASCII")));
        }

        public void _check() {
            if ((this.buf).getBytes(Charset.forName("ASCII")).length != _root().sizes().get(((Number) (idx())).intValue()))
                throw new ConsistencyError("buf", (this.buf).getBytes(Charset.forName("ASCII")).length, _root().sizes().get(((Number) (idx())).intValue()));
        }
        private String buf;
        private int idx;
        private IndexToParamExpr _root;
        private IndexToParamExpr _parent;
        public String buf() { return buf; }
        public void setBuf(String _v) { buf = _v; }
        public int idx() { return idx; }
        public void setIdx(int _v) { idx = _v; }
        public IndexToParamExpr _root() { return _root; }
        public void set_root(IndexToParamExpr _v) { _root = _v; }
        public IndexToParamExpr _parent() { return _parent; }
        public void set_parent(IndexToParamExpr _v) { _parent = _v; }
    }
    private long qty;
    private List<Long> sizes;
    private List<Block> blocks;
    private IndexToParamExpr _root;
    private KaitaiStruct.ReadWrite _parent;
    public long qty() { return qty; }
    public void setQty(long _v) { qty = _v; }
    public List<Long> sizes() { return sizes; }
    public void setSizes(List<Long> _v) { sizes = _v; }
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { blocks = _v; }
    public IndexToParamExpr _root() { return _root; }
    public void set_root(IndexToParamExpr _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
