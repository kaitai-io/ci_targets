// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class IndexToParamUntil extends KaitaiStruct {
    public static IndexToParamUntil fromFile(String fileName) throws IOException {
        return new IndexToParamUntil(new ByteBufferKaitaiStream(fileName));
    }

    public IndexToParamUntil(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexToParamUntil(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IndexToParamUntil(KaitaiStream _io, KaitaiStruct _parent, IndexToParamUntil _root) {
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
        {
            Block _it;
            int i = 0;
            do {
                _it = new Block(this._io, this, _root, i);
                this.blocks.add(_it);
                i++;
            } while (!(_io().isEof()));
        }
    }
    public static class Block extends KaitaiStruct {

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
            _read();
        }
        private void _read() {
            this.buf = new String(this._io.readBytes(_root().sizes().get((int) idx())), Charset.forName("ASCII"));
        }
        private String buf;
        private int idx;
        private IndexToParamUntil _root;
        private IndexToParamUntil _parent;
        public String buf() { return buf; }
        public int idx() { return idx; }
        public IndexToParamUntil _root() { return _root; }
        public IndexToParamUntil _parent() { return _parent; }
    }
    private long qty;
    private ArrayList<Long> sizes;
    private ArrayList<Block> blocks;
    private IndexToParamUntil _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<Long> sizes() { return sizes; }
    public ArrayList<Block> blocks() { return blocks; }
    public IndexToParamUntil _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
