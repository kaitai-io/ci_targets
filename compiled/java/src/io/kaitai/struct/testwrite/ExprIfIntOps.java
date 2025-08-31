// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class ExprIfIntOps extends KaitaiStruct.ReadWrite {
    public static ExprIfIntOps fromFile(String fileName) throws IOException {
        return new ExprIfIntOps(new ByteBufferKaitaiStream(fileName));
    }
    public ExprIfIntOps() {
        this(null, null, null);
    }

    public ExprIfIntOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIfIntOps(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public ExprIfIntOps(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, ExprIfIntOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        if (true) {
            this.key = this._io.readU8le();
        }
        this.skip = this._io.readBytes(8);
        this._raw_bytes = this._io.readBytes(8);
        this.bytes = KaitaiStream.processXor(this._raw_bytes, ((Number) (key())).byteValue());
        this.items = new ArrayList<Byte>();
        for (int i = 0; i < 4; i++) {
            this.items.add(this._io.readS1());
        }
    }

    public void _fetchInstances() {
        if (true) {
        }
        for (int i = 0; i < this.items.size(); i++) {
        }
    }

    public void _write_Seq() {
        if (true) {
            this._io.writeU8le(this.key);
        }
        this._io.writeBytes(this.skip);
        this._raw_bytes = KaitaiStream.processXor(this.bytes, ((Number) (key())).byteValue());
        if (this._raw_bytes.length != 8)
            throw new ConsistencyError("bytes", this._raw_bytes.length, 8);
        this._io.writeBytes(this._raw_bytes);
        for (int i = 0; i < this.items.size(); i++) {
            this._io.writeS1(this.items.get(((Number) (i)).intValue()));
        }
    }

    public void _check() {
        if (true) {
        }
        if (this.skip.length != 8)
            throw new ConsistencyError("skip", this.skip.length, 8);
        if (this.items.size() != 4)
            throw new ConsistencyError("items", this.items.size(), 4);
        for (int i = 0; i < this.items.size(); i++) {
        }
    }
    private Integer bytesSubKey;
    public Integer bytesSubKey() {
        if (this.bytesSubKey != null)
            return this.bytesSubKey;
        this.bytesSubKey = ((Number) ((bytes()[((Number) (key())).intValue()] & 0xff))).intValue();
        return this.bytesSubKey;
    }
    public void _invalidateBytesSubKey() { this.bytesSubKey = null; }
    private Byte itemsSubKey;
    public Byte itemsSubKey() {
        if (this.itemsSubKey != null)
            return this.itemsSubKey;
        this.itemsSubKey = ((Number) (items().get(((Number) (key())).intValue()))).byteValue();
        return this.itemsSubKey;
    }
    public void _invalidateItemsSubKey() { this.itemsSubKey = null; }
    private Long key;
    private byte[] skip;
    private byte[] bytes;
    private List<Byte> items;
    private ExprIfIntOps _root;
    private KaitaiStruct.ReadWrite _parent;
    private byte[] _raw_bytes;
    public Long key() { return key; }
    public void setKey(Long _v) { key = _v; }
    public byte[] skip() { return skip; }
    public void setSkip(byte[] _v) { skip = _v; }
    public byte[] bytes() { return bytes; }
    public void setBytes(byte[] _v) { bytes = _v; }
    public List<Byte> items() { return items; }
    public void setItems(List<Byte> _v) { items = _v; }
    public ExprIfIntOps _root() { return _root; }
    public void set_root(ExprIfIntOps _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
    public byte[] _raw_bytes() { return _raw_bytes; }
    public void set_raw_Bytes(byte[] _v) { _raw_bytes = _v; }
}
