// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ZlibSurrounded : KaitaiStruct
    {
        public static ZlibSurrounded FromFile(string fileName)
        {
            return new ZlibSurrounded(new KaitaiStream(fileName));
        }

        public ZlibSurrounded(KaitaiStream p__io, KaitaiStruct p__parent = null, ZlibSurrounded p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _pre = m_io.ReadBytes(4);
            __raw__raw_zlib = m_io.ReadBytes(12);
            __raw_zlib = m_io.ProcessZlib(__raw__raw_zlib);
            var io___raw_zlib = new KaitaiStream(__raw_zlib);
            _zlib = new Inflated(io___raw_zlib, this, m_root);
            _post = m_io.ReadBytes(4);
        }
        public partial class Inflated : KaitaiStruct
        {
            public static Inflated FromFile(string fileName)
            {
                return new Inflated(new KaitaiStream(fileName));
            }

            public Inflated(KaitaiStream p__io, ZlibSurrounded p__parent = null, ZlibSurrounded p__root = null) : base(p__io)
            {
                m_parent = p__parent;
                m_root = p__root;
                _read();
            }
            private void _read()
            {
                _num = m_io.ReadS4le();
            }
            public int Num { get { return _num; } }
            public ZlibSurrounded M_Root { get { return m_root; } }
            public ZlibSurrounded M_Parent { get { return m_parent; } }
            private int _num;
            private ZlibSurrounded m_root;
            private ZlibSurrounded m_parent;
        }
        public byte[] Pre { get { return _pre; } }
        public Inflated Zlib { get { return _zlib; } }
        public byte[] Post { get { return _post; } }
        public ZlibSurrounded M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        public byte[] M_RawZlib { get { return __raw_zlib; } }
        public byte[] M_RawM_RawZlib { get { return __raw__raw_zlib; } }
        private byte[] _pre;
        private Inflated _zlib;
        private byte[] _post;
        private ZlibSurrounded m_root;
        private KaitaiStruct m_parent;
        private byte[] __raw_zlib;
        private byte[] __raw__raw_zlib;
    }
}
