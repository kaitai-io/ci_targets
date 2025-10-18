// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailContentsInst : KaitaiStruct
    {
        public static ValidFailContentsInst FromFile(string fileName)
        {
            return new ValidFailContentsInst(new KaitaiStream(fileName));
        }

        public ValidFailContentsInst(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailContentsInst p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            f_foo = false;
            _read();
        }
        private void _read()
        {
            if (Foo.Length == 0) {
                _a = m_io.ReadBytes(0);
            }
        }
        public byte[] Foo
        {
            get
            {
                if (f_foo)
                    return _foo;
                f_foo = true;
                long _pos = m_io.Pos;
                m_io.Seek(0);
                _foo = m_io.ReadBytes(2);
                if (!((KaitaiStream.ByteArrayCompare(_foo, new byte[] { 81, 65 }) == 0)))
                {
                    throw new ValidationNotEqualError(new byte[] { 81, 65 }, _foo, m_io, "/instances/foo");
                }
                m_io.Seek(_pos);
                return _foo;
            }
        }
        public byte[] A { get { return _a; } }
        public ValidFailContentsInst M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private bool f_foo;
        private byte[] _foo;
        private byte[] _a;
        private ValidFailContentsInst m_root;
        private KaitaiStruct m_parent;
    }
}
