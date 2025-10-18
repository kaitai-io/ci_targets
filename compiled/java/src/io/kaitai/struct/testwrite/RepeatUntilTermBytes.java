// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import io.kaitai.struct.ConsistencyError;
import java.util.List;

public class RepeatUntilTermBytes extends KaitaiStruct.ReadWrite {
    public static RepeatUntilTermBytes fromFile(String fileName) throws IOException {
        return new RepeatUntilTermBytes(new ByteBufferKaitaiStream(fileName));
    }
    public RepeatUntilTermBytes() {
        this(null, null, null);
    }

    public RepeatUntilTermBytes(KaitaiStream _io) {
        this(_io, null, null);
    }

    public RepeatUntilTermBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public RepeatUntilTermBytes(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, RepeatUntilTermBytes _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.records1 = new ArrayList<byte[]>();
        {
            byte[] _it;
            int i = 0;
            do {
                _it = this._io.readBytesTerm((byte) 170, false, true, true);
                this.records1.add(_it);
                i++;
            } while (!(_it.length == 0));
        }
        this.records2 = new ArrayList<byte[]>();
        {
            byte[] _it;
            int i = 0;
            do {
                _it = this._io.readBytesTerm((byte) 170, true, true, true);
                this.records2.add(_it);
                i++;
            } while (!(!Arrays.equals(_it, new byte[] { -86 })));
        }
        this.records3 = new ArrayList<byte[]>();
        {
            byte[] _it;
            int i = 0;
            do {
                _it = this._io.readBytesTerm((byte) 85, false, false, true);
                this.records3.add(_it);
                i++;
            } while (!(Arrays.equals(_it, records1().get(records1().size() - 1))));
        }
        _dirty = false;
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.records1.size(); i++) {
        }
        for (int i = 0; i < this.records2.size(); i++) {
        }
        for (int i = 0; i < this.records3.size(); i++) {
        }
    }

    public void _write_Seq() {
        _assertNotDirty();
        for (int i = 0; i < this.records1.size(); i++) {
            this._io.writeBytes(this.records1.get(((Number) (i)).intValue()));
            this._io.writeU1(170);
        }
        for (int i = 0; i < this.records2.size(); i++) {
            this._io.writeBytes(this.records2.get(((Number) (i)).intValue()));
        }
        for (int i = 0; i < this.records3.size(); i++) {
            this._io.writeBytes(this.records3.get(((Number) (i)).intValue()));
            {
                long _pos = this._io.pos();
                this._io.writeU1(85);
                this._io.seek(_pos);
            }
        }
    }

    public void _check() {
        if (this.records1.size() == 0)
            throw new ConsistencyError("records1", 0, this.records1.size());
        for (int i = 0; i < this.records1.size(); i++) {
            if (KaitaiStream.byteArrayIndexOf(this.records1.get(((Number) (i)).intValue()), ((byte) 170)) != -1)
                throw new ConsistencyError("records1", -1, KaitaiStream.byteArrayIndexOf(this.records1.get(((Number) (i)).intValue()), ((byte) 170)));
            {
                byte[] _it = this.records1.get(((Number) (i)).intValue());
                if ((_it.length == 0) != (i == this.records1.size() - 1))
                    throw new ConsistencyError("records1", i == this.records1.size() - 1, _it.length == 0);
            }
        }
        if (this.records2.size() == 0)
            throw new ConsistencyError("records2", 0, this.records2.size());
        for (int i = 0; i < this.records2.size(); i++) {
            if (this.records2.get(((Number) (i)).intValue()).length == 0)
                throw new ConsistencyError("records2", 0, this.records2.get(((Number) (i)).intValue()).length);
            if (KaitaiStream.byteArrayIndexOf(this.records2.get(((Number) (i)).intValue()), ((byte) 170)) != this.records2.get(((Number) (i)).intValue()).length - 1)
                throw new ConsistencyError("records2", this.records2.get(((Number) (i)).intValue()).length - 1, KaitaiStream.byteArrayIndexOf(this.records2.get(((Number) (i)).intValue()), ((byte) 170)));
            {
                byte[] _it = this.records2.get(((Number) (i)).intValue());
                if (!Arrays.equals(_it, new byte[] { -86 }) != (i == this.records2.size() - 1))
                    throw new ConsistencyError("records2", i == this.records2.size() - 1, !Arrays.equals(_it, new byte[] { -86 }));
            }
        }
        if (this.records3.size() == 0)
            throw new ConsistencyError("records3", 0, this.records3.size());
        for (int i = 0; i < this.records3.size(); i++) {
            if (KaitaiStream.byteArrayIndexOf(this.records3.get(((Number) (i)).intValue()), ((byte) 85)) != -1)
                throw new ConsistencyError("records3", -1, KaitaiStream.byteArrayIndexOf(this.records3.get(((Number) (i)).intValue()), ((byte) 85)));
            {
                byte[] _it = this.records3.get(((Number) (i)).intValue());
                if (Arrays.equals(_it, records1().get(records1().size() - 1)) != (i == this.records3.size() - 1))
                    throw new ConsistencyError("records3", i == this.records3.size() - 1, Arrays.equals(_it, records1().get(records1().size() - 1)));
            }
        }
        _dirty = false;
    }
    public List<byte[]> records1() { return records1; }
    public void setRecords1(List<byte[]> _v) { _dirty = true; records1 = _v; }
    public List<byte[]> records2() { return records2; }
    public void setRecords2(List<byte[]> _v) { _dirty = true; records2 = _v; }
    public List<byte[]> records3() { return records3; }
    public void setRecords3(List<byte[]> _v) { _dirty = true; records3 = _v; }
    public RepeatUntilTermBytes _root() { return _root; }
    public void set_root(RepeatUntilTermBytes _v) { _dirty = true; _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _dirty = true; _parent = _v; }
    private List<byte[]> records1;
    private List<byte[]> records2;
    private List<byte[]> records3;
    private RepeatUntilTermBytes _root;
    private KaitaiStruct.ReadWrite _parent;
}
