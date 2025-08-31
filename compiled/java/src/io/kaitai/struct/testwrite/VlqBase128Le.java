// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

package io.kaitai.struct.testwrite;

import io.kaitai.struct.ByteBufferKaitaiStream;
import io.kaitai.struct.KaitaiStruct;
import io.kaitai.struct.KaitaiStream;
import java.io.IOException;
import java.util.ArrayList;
import io.kaitai.struct.ConsistencyError;
import java.util.Objects;
import java.util.List;


/**
 * A variable-length unsigned/signed integer using base128 encoding. 1-byte groups
 * consist of 1-bit flag of continuation and 7-bit value chunk, and are ordered
 * "least significant group first", i.e. in "little-endian" manner.
 * 
 * This particular encoding is specified and used in:
 * 
 * * DWARF debug file format, where it's dubbed "unsigned LEB128" or "ULEB128".
 *   <https://dwarfstd.org/doc/dwarf-2.0.0.pdf> - page 139
 * * Google Protocol Buffers, where it's called "Base 128 Varints".
 *   <https://protobuf.dev/programming-guides/encoding/#varints>
 * * Apache Lucene, where it's called "VInt"
 *   <https://lucene.apache.org/core/3_5_0/fileformats.html#VInt>
 * * Apache Avro uses this as a basis for integer encoding, adding ZigZag on
 *   top of it for signed ints
 *   <https://avro.apache.org/docs/current/spec.html#binary_encode_primitive>
 * 
 * More information on this encoding is available at <https://en.wikipedia.org/wiki/LEB128>
 * 
 * This particular implementation supports serialized values to up 8 bytes long.
 */
public class VlqBase128Le extends KaitaiStruct.ReadWrite {
    public static VlqBase128Le fromFile(String fileName) throws IOException {
        return new VlqBase128Le(new ByteBufferKaitaiStream(fileName));
    }
    public VlqBase128Le() {
        this(null, null, null);
    }

    public VlqBase128Le(KaitaiStream _io) {
        this(_io, null, null);
    }

    public VlqBase128Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent) {
        this(_io, _parent, null);
    }

    public VlqBase128Le(KaitaiStream _io, KaitaiStruct.ReadWrite _parent, VlqBase128Le _root) {
        super(_io);
        this._parent = _parent;
        this._root = _root == null ? this : _root;
    }
    public void _read() {
        this.groups = new ArrayList<Group>();
        {
            Group _it;
            int i = 0;
            do {
                Group _t_groups = new Group(this._io, this, _root);
                try {
                    _t_groups._read();
                } finally {
                    _it = _t_groups;
                    this.groups.add(_it);
                }
                i++;
            } while (!(!(_it.hasNext())));
        }
    }

    public void _fetchInstances() {
        for (int i = 0; i < this.groups.size(); i++) {
            this.groups.get(((Number) (i)).intValue())._fetchInstances();
        }
    }

    public void _write_Seq() {
        for (int i = 0; i < this.groups.size(); i++) {
            this.groups.get(((Number) (i)).intValue())._write_Seq(this._io);
        }
    }

    public void _check() {
        if (this.groups.size() == 0)
            throw new ConsistencyError("groups", this.groups.size(), 0);
        for (int i = 0; i < this.groups.size(); i++) {
            if (!Objects.equals(this.groups.get(((Number) (i)).intValue())._root(), _root()))
                throw new ConsistencyError("groups", this.groups.get(((Number) (i)).intValue())._root(), _root());
            if (!Objects.equals(this.groups.get(((Number) (i)).intValue())._parent(), this))
                throw new ConsistencyError("groups", this.groups.get(((Number) (i)).intValue())._parent(), this);
            {
                Group _it = this.groups.get(((Number) (i)).intValue());
                if (!(_it.hasNext()) != (i == this.groups.size() - 1))
                    throw new ConsistencyError("groups", !(_it.hasNext()), i == this.groups.size() - 1);
            }
        }
    }

    /**
     * One byte group, clearly divided into 7-bit "value" chunk and 1-bit "continuation" flag.
     */
    public static class Group extends KaitaiStruct.ReadWrite {
        public static Group fromFile(String fileName) throws IOException {
            return new Group(new ByteBufferKaitaiStream(fileName));
        }
        public Group() {
            this(null, null, null);
        }

        public Group(KaitaiStream _io) {
            this(_io, null, null);
        }

        public Group(KaitaiStream _io, VlqBase128Le _parent) {
            this(_io, _parent, null);
        }

        public Group(KaitaiStream _io, VlqBase128Le _parent, VlqBase128Le _root) {
            super(_io);
            this._parent = _parent;
            this._root = _root;
        }
        public void _read() {
            this.hasNext = this._io.readBitsIntBe(1) != 0;
            this.value = this._io.readBitsIntBe(7);
        }

        public void _fetchInstances() {
        }

        public void _write_Seq() {
            this._io.writeBitsIntBe(1, (this.hasNext ? 1 : 0));
            this._io.writeBitsIntBe(7, this.value);
        }

        public void _check() {
        }
        private boolean hasNext;
        private long value;
        private VlqBase128Le _root;
        private VlqBase128Le _parent;

        /**
         * If true, then we have more bytes to read
         */
        public boolean hasNext() { return hasNext; }
        public void setHasNext(boolean _v) { hasNext = _v; }

        /**
         * The 7-bit (base128) numeric value chunk of this group
         */
        public long value() { return value; }
        public void setValue(long _v) { value = _v; }
        public VlqBase128Le _root() { return _root; }
        public void set_root(VlqBase128Le _v) { _root = _v; }
        public VlqBase128Le _parent() { return _parent; }
        public void set_parent(VlqBase128Le _v) { _parent = _v; }
    }
    private Integer len;
    public Integer len() {
        if (this.len != null)
            return this.len;
        this.len = ((Number) (groups().size())).intValue();
        return this.len;
    }
    public void _invalidateLen() { this.len = null; }
    private Long signBit;
    public Long signBit() {
        if (this.signBit != null)
            return this.signBit;
        this.signBit = ((Number) (((Number) (((long) 1) << 7 * len() - 1)).longValue())).longValue();
        return this.signBit;
    }
    public void _invalidateSignBit() { this.signBit = null; }
    private Long value;

    /**
     * Resulting unsigned value as normal integer
     */
    public Long value() {
        if (this.value != null)
            return this.value;
        this.value = ((Number) (((Number) (((((((groups().get(((int) 0)).value() + (len() >= 2 ? groups().get(((int) 1)).value() << 7 : 0)) + (len() >= 3 ? groups().get(((int) 2)).value() << 14 : 0)) + (len() >= 4 ? groups().get(((int) 3)).value() << 21 : 0)) + (len() >= 5 ? groups().get(((int) 4)).value() << 28 : 0)) + (len() >= 6 ? groups().get(((int) 5)).value() << 35 : 0)) + (len() >= 7 ? groups().get(((int) 6)).value() << 42 : 0)) + (len() >= 8 ? groups().get(((int) 7)).value() << 49 : 0))).longValue())).longValue();
        return this.value;
    }
    public void _invalidateValue() { this.value = null; }
    private Long valueSigned;

    /**
     * @see <a href="https://graphics.stanford.edu/~seander/bithacks.html#VariableSignExtend">Source</a>
     */
    public Long valueSigned() {
        if (this.valueSigned != null)
            return this.valueSigned;
        this.valueSigned = ((Number) (((Number) (((Number) (value() ^ signBit())).longValue() - ((Number) (signBit())).longValue())).longValue())).longValue();
        return this.valueSigned;
    }
    public void _invalidateValueSigned() { this.valueSigned = null; }
    private List<Group> groups;
    private VlqBase128Le _root;
    private KaitaiStruct.ReadWrite _parent;
    public List<Group> groups() { return groups; }
    public void setGroups(List<Group> _v) { groups = _v; }
    public VlqBase128Le _root() { return _root; }
    public void set_root(VlqBase128Le _v) { _root = _v; }
    public KaitaiStruct.ReadWrite _parent() { return _parent; }
    public void set_parent(KaitaiStruct.ReadWrite _v) { _parent = _v; }
}
