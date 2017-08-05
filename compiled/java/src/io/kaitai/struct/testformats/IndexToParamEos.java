// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class IndexToParamEos extends KaitaiStruct {
    public static IndexToParamEos fromFile(String fileName) throws IOException {
        return new IndexToParamEos(new ByteBufferKaitaiStream(fileName));
    }

    public IndexToParamEos(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexToParamEos(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IndexToParamEos(KaitaiStream _io, KaitaiStruct _parent, IndexToParamEos _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        sizes = new ArrayList<Long>((int) (qty()));
        for (int i = 0; i < qty(); i++) {
            this.sizes.add(this._io.readU4le());
        }
        this.blocks = new ArrayList<Block>();
        while (!this._io.isEof()) {
            this.blocks.add(new Block(this._io, this, _root, i));
        }
    }
    public static class Block extends KaitaiStruct {

        public Block(KaitaiStream _io, long idx) {
            this(_io, null, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamEos _parent, long idx) {
            this(_io, _parent, null, idx);
        }

        public Block(KaitaiStream _io, IndexToParamEos _parent, IndexToParamEos _root, long idx) {
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
        private long idx;
        private IndexToParamEos _root;
        private IndexToParamEos _parent;
        public String buf() { return buf; }
        public long idx() { return idx; }
        public IndexToParamEos _root() { return _root; }
        public IndexToParamEos _parent() { return _parent; }
    }
    private long qty;
    private ArrayList<Long> sizes;
    private ArrayList<Block> blocks;
    private IndexToParamEos _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<Long> sizes() { return sizes; }
    public ArrayList<Block> blocks() { return blocks; }
    public IndexToParamEos _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
