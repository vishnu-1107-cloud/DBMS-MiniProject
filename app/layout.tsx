import type {ReactNode} from 'react';
import './globals.css';
export const metadata={title:'CampusFix | Campus Services',description:'Report and track campus facility issues'};
export default function RootLayout({children}:{children:ReactNode}){return <html lang="en"><body>{children}</body></html>}