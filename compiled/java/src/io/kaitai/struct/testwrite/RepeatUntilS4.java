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

public class RepeatUntilS4 extends KaitaiStruct.ReadWrite {
    public static RepeatUntilS4 fromFile(String fileName) throws IOException {
        return new RepeatUntilS4(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatUntilS4() {
        this(null, null, null);
    }

    public RepeatUntilS4(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilS4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilS4(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatUntilS4 _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.entries = new ArrayList<Integer>();
        {
            int _it;
            int i = 0;
            do {
                _it = this._io.readS4le();
                this.entries.add(_it);
                i++;
            } while (!(_it == -1));
        }
        this.afterall = new String(this._io.readBytesTerm((byte) 0, false, true, true), StandardCharsets.US_ASCII);
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.entries.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.entries.size(); i++) {
            this._io.writeS4le(this.entries.get(((Number) (i)).intValue()));
        }
        this._io.writeBytes((this.afterall).getBytes(Charset.forName("ASCII")));
        this._io.writeU1(0);
    }

    public void _check() {
        if (this.entries.size() == 0)
            throw new ConsistencyError("entries", 0, this.entries.size());
        for (int i = 0; i < this.entries.size(); i++) {
            {
                int _it = this.entries.get(((Number) (i)).intValue());
                if ((_it == -1) != (i == this.entries.size() - 1))
                    throw new ConsistencyError("entries", i == this.entries.size() - 1, _it == -1);
            }
        }
        if (KaitaiStream.byteArrayIndexOf((this.afterall).getBytes(Charset.forName("ASCII")), ((byte) 0)) != -1)
            throw new ConsistencyError("afterall", -1, KaitaiStream.byteArrayIndexOf((this.afterall).getBytes(Charset.forName("ASCII")), ((byte) 0)));
        _dirty = false;
    }
    private List<Integer> entries;
    private String afterall;
    private RepeatUntilS4 _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Integer> entries() { return entries; }
    public void setEntries(List<Integer> _v) { _dirty = true; entries = _v; }
    public String afterall() { return afterall; }
    public void setAfterall(String _v) { _dirty = true; afterall = _v; }
    public RepeatUntilS4 _root() { return _root; }
    public void set_root(RepeatUntilS4 _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
}
