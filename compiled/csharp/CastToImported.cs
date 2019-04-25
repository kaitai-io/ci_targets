// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class CastToImported : KaitaiStruct
    {
        public static CastToImported FromFile(string fileName)
        {
            return new CastToImported(new KaitaiStream(fileName));
        }

        public CastToImported(KaitaiStream p__io, KaitaiStruct p__parent = null, CastToImported p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_oneCasted = false;
            _read();
        }
        private void _read()
        {
            _one = new HelloWorld(m_io);
        }
        private bool f_oneCasted;
        private HelloWorld _oneCasted;
        public HelloWorld OneCasted
        {
            get
            {
                if (f_oneCasted)
                    return _oneCasted;
                _oneCasted = (HelloWorld) (((HelloWorld) (One)));
                f_oneCasted = true;
                return _oneCasted;
            }
        }
        private HelloWorld _one;
        private CastToImported m_root;
        private KaitaiStruct m_parent;
        public HelloWorld One { get { return _one; } }
        public CastToImported M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
