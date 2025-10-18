// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild



namespace Kaitai
{
    public partial class ValidFailRangeBytes : KaitaiStruct
    {
        public static ValidFailRangeBytes FromFile(string fileName)
        {
            return new ValidFailRangeBytes(new KaitaiStream(fileName));
        }

        public ValidFailRangeBytes(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRangeBytes p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = m_io.ReadBytes(2);
            if (!((KaitaiStream.ByteArrayCompare(_foo, new byte[] { 80 }) >= 0)))
            {
                throw new ValidationLessThanError(new byte[] { 80 }, _foo, m_io, "/seq/0");
            }
            if (!((KaitaiStream.ByteArrayCompare(_foo, new byte[] { 80, 49 }) <= 0)))
            {
                throw new ValidationGreaterThanError(new byte[] { 80, 49 }, _foo, m_io, "/seq/0");
            }
        }
        public byte[] Foo { get { return _foo; } }
        public ValidFailRangeBytes M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private byte[] _foo;
        private ValidFailRangeBytes m_root;
        private KaitaiStruct m_parent;
    }
}
