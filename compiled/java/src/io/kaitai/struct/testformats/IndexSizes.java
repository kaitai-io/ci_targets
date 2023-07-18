// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;

public class IndexSizes extends KaitaiStruct {
    public static IndexSizes fromFile(String fileName) throws IOException {
        return new IndexSizes(new ByteBufferKaitaiStream(fileName));
    }

    public IndexSizes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexSizes(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public IndexSizes(KaitaiStream _io, KaitaiStruct _parent, IndexSizes _root) {
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
        this.bufs = new ArrayList<String>();
        for (int i = 0; i < qty(); i++) {
            this.bufs.add(new String(this._io.readBytes(sizes().get((int) i)), StandardCharsets.US_ASCII));
        }
    }
    private long qty;
    private ArrayList<Long> sizes;
    private ArrayList<String> bufs;
    private IndexSizes _root;
    private KaitaiStruct _parent;
    public long qty() { return qty; }
    public ArrayList<Long> sizes() { return sizes; }
    public ArrayList<String> bufs() { return bufs; }
    public IndexSizes _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
}
