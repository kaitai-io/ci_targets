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

public class IndexToParamEos extends KaitaiStruct.ReadWrite {
    public static IndexToParamEos fromFile(String fileName) throws IOException {
        return new IndexToParamEos(new ByteBufferKaitaiStream(fileName));
    }
    public IndexToParamEos() {
        this(null, null, null);
    }

    public IndexToParamEos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexToParamEos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IndexToParamEos(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IndexToParamEos _root) {
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
        {
            int i = 0;
            while (!this._io.isEof()) {
                Block _t_blocks = new Block(this._io, this, _root, i);
                try {
                    _t_blocks._read();
                } finally {
                    this.blocks.add(_t_blocks);
                }
                i++;
            }
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        for (int i = 0; i < this.blocks.size(); i++) {
            this.blocks.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.qty);
        for (int i = 0; i < this.sizes.size(); i++) {
            this._io.writeU4le(this.sizes.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.blocks.size(); i++) {
            if (this._io.isEof())
                throw new ConsistencyError("blocks", 0, this._io.size() - this._io.pos());
            this.blocks.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
        if (!(this._io.isEof()))
            throw new ConsistencyError("blocks", 0, this._io.size() - this._io.pos());
    }

    public void _check() {
        if (this.sizes.size() != qty())
            throw new ConsistencyError("sizes", qty(), this.sizes.size());
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        for (int i = 0; i < this.blocks.size(); i++) {
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("blocks", _root(), this.blocks.get(((Number) (i)).intValue())._root());
            if (!Objects.equals(this.blocks.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("blocks", this, this.blocks.get(((Number) (i)).intValue())._parent());
            if (this.blocks.get(((Number) (i)).intValue()).idx() != i)
                throw new ConsistencyError("blocks", i, this.blocks.get(((Number) (i)).intValue()).idx());
        }
        _dirty = false;
    }
    public static class Block extends KaitaiStruct.ReadWrite {
        public Block(int idx) {
            this(null, null, null, idx);
        }

        public Block(KaitaiStream _io, int idx) {
            this(_io, null, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamEos _parent, int idx) {
            this(_io, _parent, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamEos _parent, IndexToParamEos _root, int idx) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
            this.idx = idx;
        }
        public void _read() {
            this.buf = new String(this._io.readBytes(_root().sizes().get(((Number) (idx())).intValue())), StandardCharsets.US_ASCII);
            _dirty = false;
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            _assertNotDirty();
            this._io.writeBytes((this.buf).getBytes(Charset.forName("ASCII")));
        }

        public void _check() {
            if ((this.buf).getBytes(Charset.forName("ASCII")).length != _root().sizes().get(((Number) (idx())).intValue()))
                throw new ConsistencyError("buf", _root().sizes().get(((Number) (idx())).intValue()), (this.buf).getBytes(Charset.forName("ASCII")).length);
            _dirty = false;
        }
        private String buf;
        private int idx;
        private IndexToParamEos _root;
        private IndexToParamEos _parent;
        public String buf() { return buf; }
        public void setBuf(String _v) { _dirty = true; buf = _v; }
        public int idx() { return idx; }
        public void setIdx(int _v) { _dirty = true; idx = _v; }
        public IndexToParamEos _root() { return _root; }
        public void set_root(IndexToParamEos _v) { _dirty = true; _root = _v; }
        public IndexToParamEos _parent() { return _parent; }
        public void set_parent(IndexToParamEos _v) { _dirty = true; _parent = _v; }
    }
    private long qty;
    private List<Long> sizes;
    private List<Block> blocks;
    private IndexToParamEos _root;
    private KaitaiStruct.ReadWrite _parent;
    public long qty() { return qty; }
    public void setQty(long _v) { _dirty = true; qty = _v; }
    public List<Long> sizes() { return sizes; }
    public void setSizes(List<Long> _v) { _dirty = true; sizes = _v; }
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { _dirty = true; blocks = _v; }
    public IndexToParamEos _root() { return _root; }
    public void set_root(IndexToParamEos _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
