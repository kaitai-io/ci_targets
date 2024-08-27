// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CastToTop : KaitaiStruct
    {
        public static CastToTop FromFile(string fileName)
        {
            return new CastToTop(new KaitaiStream(fileName));
        }

        public CastToTop(KaitaiStream p__io, KaitaiStruct p__parent = null, CastToTop p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_header = false;
            f_headerCasted = false;
            _read();
        }
        private void _read()
        {
            _code = m_io.ReadU1();
        }
        private bool f_header;
        private CastToTop _header;
        public CastToTop Header
        {
            get
            {
                if (f_header)
                    return _header;
                f_header = true;
                long _pos = m_io.Pos;
                m_io.Seek(1);
                _header = new CastToTop(m_io, this, m_root);
                m_io.Seek(_pos);
                return _header;
            }
        }
        private bool f_headerCasted;
        private CastToTop _headerCasted;
        public CastToTop HeaderCasted
        {
            get
            {
                if (f_headerCasted)
                    return _headerCasted;
                f_headerCasted = true;
                _headerCasted = (CastToTop) (((CastToTop) (Header)));
                return _headerCasted;
            }
        }
        private byte _code;
        private CastToTop m_root;
        private KaitaiStruct m_parent;
        public byte Code { get { return _code; } }
        public CastToTop M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
