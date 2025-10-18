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

public class IndexToParamUntil extends KaitaiStruct.ReadWrite {
    public static IndexToParamUntil fromFile(String fileName) throws IOException {
        return new IndexToParamUntil(new ByteBufferKaitaiStream(fileName));
    }
    public IndexToParamUntil() {
        this(null, null, null);
    }

    public IndexToParamUntil(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexToParamUntil(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IndexToParamUntil(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IndexToParamUntil _root) {
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
            Block _it;
            int i = 0;
            do {
                Block _t_blocks = new Block(this._io, this, _root, i);
                try {
                    _t_blocks._read();
                } finally {
                    _it = _t_blocks;
                    this.blocks.add(_it);
                }
                i++;
            } while (!(_io().isEof()));
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
            this.blocks.get(((Number) (i)).intValue())._write_Seq(this._io);
            {
                Block _it = this.blocks.get(((Number) (i)).intValue());
                if (_io().isEof() != (i == this.blocks.size() - 1))
                    throw new ConsistencyError("blocks", i == this.blocks.size() - 1, _io().isEof());
            }
        }
    }

    public void _check() {
        if (this.sizes.size() != qty())
            throw new ConsistencyError("sizes", qty(), this.sizes.size());
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        if (this.blocks.size() == 0)
            throw new ConsistencyError("blocks", 0, this.blocks.size());
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

        public Block(KaitaiStream _io, IndexToParamUntil _parent, int idx) {
            this(_io, _parent, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamUntil _parent, IndexToParamUntil _root, int idx) {
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
        public String buf() { return buf; }
        public void setBuf(String _v) { _dirty = true; buf = _v; }
        public int idx() { return idx; }
        public void setIdx(int _v) { _dirty = true; idx = _v; }
        public IndexToParamUntil _root() { return _root; }
        public void set_root(IndexToParamUntil _v) { _dirty = true; _root = _v; }
        public IndexToParamUntil _parent() { return _parent; }
        public void set_parent(IndexToParamUntil _v) { _dirty = true; _parent = _v; }
        private String buf;
        private int idx;
        private IndexToParamUntil _root;
        private IndexToParamUntil _parent;
    }
    public long qty() { return qty; }
    public void setQty(long _v) { _dirty = true; qty = _v; }
    public List<Long> sizes() { return sizes; }
    public void setSizes(List<Long> _v) { _dirty = true; sizes = _v; }
    public List<Block> blocks() { return blocks; }
    public void setBlocks(List<Block> _v) { _dirty = true; blocks = _v; }
    public IndexToParamUntil _root() { return _root; }
    public void set_root(IndexToParamUntil _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private long qty;
    private List<Long> sizes;
    private List<Block> blocks;
    private IndexToParamUntil _root;
    private KaitaiStruct.ReadWrite _parent;
}
