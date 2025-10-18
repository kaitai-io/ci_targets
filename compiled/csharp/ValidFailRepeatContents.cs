// This is a generated file! Please edit source .ksy file and use kaitai-struct-compiler to rebuild

using System.Collections.Generic;

namespace Kaitai
{
    public partial class ValidFailRepeatContents : KaitaiStruct
    {
        public static ValidFailRepeatContents FromFile(string fileName)
        {
            return new ValidFailRepeatContents(new KaitaiStream(fileName));
        }

        public ValidFailRepeatContents(KaitaiStream p__io, KaitaiStruct p__parent = null, ValidFailRepeatContents p__root = null) : base(p__io)
        {
            m_parent = p__parent;
            m_root = p__root ?? this;
            _read();
        }
        private void _read()
        {
            _foo = new List<byte[]>();
            {
                var i = 0;
                while (!m_io.IsEof) {
                    _foo.Add(m_io.ReadBytes(4));
                    if (!((KaitaiStream.ByteArrayCompare(_foo[i], new byte[] { 18, 52, 86, 120 }) == 0)))
                    {
                        throw new ValidationNotEqualError(new byte[] { 18, 52, 86, 120 }, _foo[i], m_io, "/seq/0");
                    }
                    i++;
                }
            }
        }
        public List<byte[]> Foo { get { return _foo; } }
        public ValidFailRepeatContents M_Root { get { return m_root; } }
        public KaitaiStruct M_Parent { get { return m_parent; } }
        private List<byte[]> _foo;
        private ValidFailRepeatContents m_root;
        private KaitaiStruct m_parent;
    }
}
