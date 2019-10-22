// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailEqBytes : KaitaiStruct
    {
        public static ValidFailEqBytes FromFile(string fileName)
        {
            return new ValidFailEqBytes(new KaitaiStream(fileName));
        }

        public ValidFailEqBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailEqBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadBytes(2);
            if (!((KaitaiStream.ByteArrayCompare(Foo, new byte[] { 81, 65 }) == 0)))
            {
                throw new ValidationNotEqualError(new byte[] { 81, 65 }, Foo, M_Io, "/seq/0");
            }
        }
        private byte[] _foo;
        private ValidFailEqBytes m_root;
        private KaitaiStruct m_parent;
        public byte[] Foo { get { return _foo; } }
        public ValidFailEqBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
    }
}
