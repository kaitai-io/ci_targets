// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.nio.charset.StandardCharsets;
import java.nio.charset.Charset;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class IndexSizes extends KaitaiStruct.ReadWrite {
    public static IndexSizes fromFile(String fileName) throws IOException {
        return new IndexSizes(new ByteBufferKaitaiStream(fileName));
    }
    public IndexSizes() {
        this(null, null, null);
    }

    public IndexSizes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public IndexSizes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public IndexSizes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, IndexSizes _root) {
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
        this.bufs = new ArrayList<String>();
        for (int i = 0; i < qty(); i++) {
            this.bufs.add(new String(this._io.readBytes(sizes().get(((Number) (i)).intValue())), StandardCharsets.US_ASCII));
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        for (int i = 0; i < this.bufs.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        this._io.writeU4le(this.qty);
        for (int i = 0; i < this.sizes.size(); i++) {
            this._io.writeU4le(this.sizes.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.bufs.size(); i++) {
            this._io.writeBytes((this.bufs.get(((Number) (i)).intValue())).getBytes(Charset.forName("ASCII")));
        }
    }

    public void _check() {
        if (this.sizes.size() != qty())
            throw new ConsistencyError("sizes", qty(), this.sizes.size());
        for (int i = 0; i < this.sizes.size(); i++) {
        }
        if (this.bufs.size() != qty())
            throw new ConsistencyError("bufs", qty(), this.bufs.size());
        for (int i = 0; i < this.bufs.size(); i++) {
            if ((this.bufs.get(((Number) (i)).intValue())).getBytes(Charset.forName("ASCII")).length != sizes().get(((Number) (i)).intValue()))
                throw new ConsistencyError("bufs", sizes().get(((Number) (i)).intValue()), (this.bufs.get(((Number) (i)).intValue())).getBytes(Charset.forName("ASCII")).length);
        }
        _dirty = false;
    }
    public long qty() { return qty; }
    public void setQty(long _v) { _dirty = true; qty = _v; }
    public List<Long> sizes() { return sizes; }
    public void setSizes(List<Long> _v) { _dirty = true; sizes = _v; }
    public List<String> bufs() { return bufs; }
    public void setBufs(List<String> _v) { _dirty = true; bufs = _v; }
    public IndexSizes _root() { return _root; }
    public void set_root(IndexSizes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private long qty;
    private List<Long> sizes;
    private List<String> bufs;
    private IndexSizes _root;
    private KaitaiStruct.ReadWrite _parent;
}
