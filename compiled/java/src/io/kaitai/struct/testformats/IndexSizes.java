// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.Charset;

public class IndexSizes extends KaitaiStruct {
    public static IndexSizes fromFile(String fileName) throws IOException {
        return new IndexSizes(new KaitaiStream(fileName));
    }

    public IndexSizes(KaitaiStream _io) {
        super(_io);
        this._root = this;
        _init();
    }

    public IndexSizes(KaitaiStream _io, KaitaiStruct _parent) {
        super(_io);
        this._parent = _parent;
        this._root = this;
        _init();
    }

    public IndexSizes(KaitaiStream _io, KaitaiStruct _parent, IndexSizes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root;
        _init();
    }

    private void _init() {
        _read();
    }
    private void _read() {
        this.qty = this._io.readU4le();
        sizes = new ArrayList<Long>((int) (qty()));
        for (int i = 0; i < qty(); i++) {
            this.sizes.add(this._io.readU4le());
        }
        bufs = new ArrayList<String>((int) (qty()));
        for (int i = 0; i < qty(); i++) {
            this.bufs.add(new String(this._io.readBytes(sizes().get((int) i)), Charset.forName("ASCII")));
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
