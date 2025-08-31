// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testformats;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

public class ExprIfIntOps extends KaitaiStruct {
    public static ExprIfIntOps fromFile(String fileName) throws IOException {
        return new ExprIfIntOps(new ByteBufferKaitaiStream(fileName));
    }

    public ExprIfIntOps(KaitaiStream _io) {
        this(_io, null, null);
    }

    public ExprIfIntOps(KaitaiStream _io, KaitaiStruct _parent) {
        this(_io, _parent, null);
    }

    public ExprIfIntOps(KaitaiStream _io, KaitaiStruct _parent, ExprIfIntOps _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
        _read();
    }
    private void _read() {
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
    private Integer bytesSubKey;
    public Integer bytesSubKey() {
        if (this.bytesSubKey != null)
            return this.bytesSubKey;
        this.bytesSubKey = ((Number) ((bytes()[((Number) (key())).intValue()] & 0xff))).intValue();
        return this.bytesSubKey;
    }
    private Byte itemsSubKey;
    public Byte itemsSubKey() {
        if (this.itemsSubKey != null)
            return this.itemsSubKey;
        this.itemsSubKey = ((Number) (items().get(((Number) (key())).intValue()))).byteValue();
        return this.itemsSubKey;
    }
    private Long key;
    private byte[] skip;
    private byte[] bytes;
    private List<Byte> items;
    private ExprIfIntOps _root;
    private KaitaiStruct _parent;
    private byte[] _raw_bytes;
    public Long key() { return key; }
    public byte[] skip() { return skip; }
    public byte[] bytes() { return bytes; }
    public List<Byte> items() { return items; }
    public ExprIfIntOps _root() { return _root; }
    public KaitaiStruct _parent() { return _parent; }
    public byte[] _raw_bytes() { return _raw_bytes; }
}
