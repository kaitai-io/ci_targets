// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class IndexToParamExpr extends KaitaiStruct {
    public static IndexToParamExpr fromFile(String fileName) throws IOException {
        return new IndexToParamExpr(new ByteBufferKaitaiStream(fileName));
    }

    public IndexToParamExpr(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexToParamExpr(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IndexToParamExpr(KaitaiStream _io, KaitaiStruct _parent, IndexToParamExpr _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        this.sizes = new ArrayList<Long>();
        for (int i = 0; i < qty(); i++) {
            this.sizes.add(this._io.readU4le());
        }
        this.blocks = new ArrayList<Block>();
        for (int i = 0; i < qty(); i++) {
            this.blocks.add(new Block(this._io, this, _root, i));
        }
    }
    public static class Block extends KaitaiStruct {

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
            _read();
        }
        private void _read() {
            this.buf = new String(this._io.readBytes(_root.sizes().get((int) idx())), Charset.forName("ASCII"));
        }
        private String buf;
        private int idx;
        private IndexToParamExpr _root;
        private IndexToParamExpr _parent;
        public String buf() { return buf; }
        public int idx() { return idx; }
        public IndexToParamExpr _root() { return _root; }
        public IndexToParamExpr _parent() { return _parent; }
    }
    private long qty;
    private ArrayList<Long> sizes;
    private ArrayList<Block> blocks;
    private IndexToParamExpr _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<Long> sizes() { return sizes; }
    public ArrayList<Block> blocks() { return blocks; }
    public IndexToParamExpr _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
