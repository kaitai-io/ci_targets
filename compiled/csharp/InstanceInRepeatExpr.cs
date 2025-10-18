// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class InstanceInRepeatExpr : KaitaiStruct
    {
        public static InstanceInRepeatExpr FromFile(string fileName)
        {
            return new InstanceInRepeatExpr(new KaitaiStream(fileName));
        }

        public InstanceInRepeatExpr(KaitaiStream p__io, KaitaiStruct p__parent = null, InstanceInRepeatExpr p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_numChunks = false;
            _read();
        }
        private void _read()
        {
            _chunks = new List<Chunk>();
            for (var i = 0; i < NumChunks; i++)
            {
                _chunks.Add(new Chunk(m_io, this, m_root));
            }
        }
        public partial class Chunk : KaitaiStruct
        {
            public static Chunk FromFile(string fileName)
            {
                return new Chunk(new KaitaiStream(fileName));
            }

            public Chunk(KaitaiStream p__io, InstanceInRepeatExpr p__parent = null, InstanceInRepeatExpr p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _offset = m_io.ReadU4le();
                _len = m_io.ReadU4le();
            }
            public uint Offset { get { return _offset; } }
            public uint Len { get { return _len; } }
            public InstanceInRepeatExpr M_Root { get { return m_root; } }
            public InstanceInRepeatExpr M_Parent { get { return m_parent; } }
            private uint _offset;
            private uint _len;
            private InstanceInRepeatExpr m_root;
            private InstanceInRepeatExpr m_parent;
        }
        public uint NumChunks
        {
            get
            {
                if (f_numChunks)
                    return _numChunks;
                f_numChunks = true;
                long _pos = m_io.Pos;
                m_io.Seek(M_Io.Pos + 16);
                _numChunks = m_io.ReadU4le();
                m_io.Seek(_pos);
                return _numChunks;
            }
        }
        public List<Chunk> Chunks { get { return _chunks; } }
        public InstanceInRepeatExpr M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_numChunks;
        private uint _numChunks;
        private List<Chunk> _chunks;
        private InstanceInRepeatExpr m_root;
        private KaitaiStruct m_parent;
    }
}
